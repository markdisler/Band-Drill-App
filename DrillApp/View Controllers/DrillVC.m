//
//  DrillVC.m
//  DrillApp
//
//  Created by Mark Disler on 3/26/18.
//  Copyright © 2018 Mark. All rights reserved.
//

#import "DrillVC.h"
#import "DADrillCell.h"
#import "UIColor+CCColors.h"
#import "DrillManager.h"

@interface DrillVC ()
@property (nonatomic, strong) NSArray *dropButtons;
@property (nonatomic, assign) BOOL dropDownToggled;
@property (nonatomic, strong) NSArray *drillList;
@property (nonatomic, strong) UIVisualEffectView *blurView;

@property (nonatomic, strong) NSArray <DrillEntry *> *drillSets;
@end

@implementation DrillVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Check if it is the first time the app is running
    BOOL isFirst = ![[NSUserDefaults standardUserDefaults] boolForKey:@"firstUse"];
    
    //If first launch, set up some of the settings
    if (isFirst) {
        [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"firstUse"];
        [[NSUserDefaults standardUserDefaults] setObject:@"This Will Be" forKey:@"currentDrill"];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
    
    // Init
    self.drillList = @[@"This Will Be", @"1812 Overture", @"Your Song", @"Sing Sing Sing"];
    self.dropDownToggled = NO;
    
    // Add Drop Down Buttons
    NSMutableArray *btns = [NSMutableArray array];
     for (int i = 0; i < self.drillList.count; i++) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
        btn.tag = i;
        btn.translatesAutoresizingMaskIntoConstraints = NO;
        [btn setBackgroundColor:colorHex(@"#EDEDED")];
        [btn setTitle:self.drillList[i] forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [btn.titleLabel setTextAlignment:NSTextAlignmentCenter];
        [btn.titleLabel setFont:[UIFont fontWithName:@"Avenir-Medium" size:16]];
        [btn addTarget:self action:@selector(drillSelected:) forControlEvents:UIControlEventTouchUpInside];
        [self.stackView addArrangedSubview:btn];
        [btn.heightAnchor constraintEqualToConstant:40].active = YES;
        [btn.leftAnchor constraintEqualToAnchor:self.view.leftAnchor].active = YES;
        [btn.rightAnchor constraintEqualToAnchor:self.view.rightAnchor].active = YES;
        btn.hidden = YES;
        if (i != self.drillList.count - 1) {
            UIView *sep = [UIView new];
            sep.translatesAutoresizingMaskIntoConstraints = NO;
            sep.backgroundColor = colorHex(@"A4A3A3");
            sep.alpha = 0.35;
            [btn addSubview:sep];
            [sep.bottomAnchor constraintEqualToAnchor:btn.bottomAnchor].active = YES;
            [sep.heightAnchor constraintEqualToConstant:0.5].active = YES;
            [sep.leftAnchor constraintEqualToAnchor:btn.leftAnchor constant:15].active = YES;
            [sep.rightAnchor constraintEqualToAnchor:btn.rightAnchor constant:-15].active = YES;
        }
        [btns addObject:btn];
    }
    self.dropButtons = btns.copy;
    
    // Drop Down Button Action
    [self.dropButton addTarget:self action:@selector(toggleDropdown) forControlEvents:UIControlEventTouchDown];
    
    // Shadow View Configuration
    [self.shadowView setBackgroundColor:[UIColor whiteColor]];
    [self.shadowView setClipsToBounds:NO];
    [self.shadowView.layer setShadowColor:[UIColor blackColor].CGColor];
    [self.shadowView.layer setShadowRadius:2];
    [self.shadowView.layer setShadowOpacity:0.1];
    
    // Table View Configuration
    [self.tableView registerNib:[UINib nibWithNibName:@"DADrillCell" bundle:nil] forCellReuseIdentifier:@"drillCell"];
    [self.tableView setSeparatorInset:UIEdgeInsetsMake(0, 0, 0, 0)];
    
    // Blur View
    self.blurView = [[UIVisualEffectView alloc] initWithEffect:nil];
    self.blurView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:self.blurView];
    [self.blurView.leftAnchor constraintEqualToAnchor:self.view.leftAnchor].active = YES;
    [self.blurView.rightAnchor constraintEqualToAnchor:self.view.rightAnchor].active = YES;
    [self.blurView.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor].active = YES;
    [self.blurView.bottomAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.bottomAnchor].active = YES;
    [self.view sendSubviewToBack:self.blurView];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self updateDataSource];
}

- (void)updateDataSource {
    NSString *currentDrillName = [[NSUserDefaults standardUserDefaults] objectForKey:@"currentDrill"];
    self.drillNameLabel.text = currentDrillName;
    
    if ([currentDrillName isEqualToString:@"This Will Be"]) {
        self.drillSets = [DrillManager thisWillBe];
    } else if ([currentDrillName isEqualToString:@"Sing Sing Sing"]) {
        self.drillSets = [DrillManager sss];
    } else {
        self.drillSets = [DrillManager example];
    }
    [self.tableView reloadData];
}

#pragma mark - Table View

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.drillSets.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 65.0;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    DADrillCell *cell = [tableView dequeueReusableCellWithIdentifier:@"drillCell" forIndexPath:indexPath];
    
    DrillEntry *entry = self.drillSets[indexPath.row];
    cell.setLabel.text = [NSString stringWithFormat:@"%ld", entry.set];
    cell.stepsLabel.text = [NSString stringWithFormat:@"%ld", entry.counts];
    cell.positionLabel.text = entry.position;
    
    if (indexPath.row % 2 == 0) {
        cell.backgroundColor = colorHex(@"#FAFAFA");
    } else {
        cell.backgroundColor = colorHex(@"#E7E7E7");
    }
    return cell;
}

#pragma mark - Helpers

- (void)toggleDropdown {
    self.dropDownToggled = !self.dropDownToggled;
    if (self.dropDownToggled) {
    
        [self.view bringSubviewToFront:self.blurView];
        [self.view bringSubviewToFront:self.stackView];
        [UIView animateWithDuration:0.35 animations:^{
           [self transform:self.dropButton angle:180];
           self.blurView.effect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleDark];
        }];
        
        for (UIButton *b in self.dropButtons) {
            [UIView animateWithDuration:0.25 animations:^{
                b.hidden = NO;
                [self.view layoutIfNeeded];
            }];
        }
        
    } else {
        for (UIButton *b in self.dropButtons) {
            [UIView animateWithDuration:0.25 animations:^{
                b.hidden = YES;
                [self.view layoutIfNeeded];
            }];
        }
        [UIView animateWithDuration:0.35 animations:^{
           [self transform:self.dropButton angle:0];
            self.blurView.effect = nil;
        } completion:^(BOOL completed) {
            [self.view sendSubviewToBack:self.blurView];
        }];
    }
}

#pragma mark - Controls

- (void)drillSelected:(id)sender {
    UIButton *btn = (UIButton *)sender;
    [self toggleDropdown];
    [self updateCurrentDrillTo:self.drillList[btn.tag]];
}

- (void)updateCurrentDrillTo:(NSString *)drillName {
    [[NSUserDefaults standardUserDefaults] setObject:drillName forKey:@"currentDrill"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    [self updateDataSource];
}


#pragma mark - Helpers

- (void)transform:(UIView *)view angle:(float)angle {
    CATransform3D rotationAndPerspectiveTransform = CATransform3DIdentity;
    rotationAndPerspectiveTransform.m34 = (float)-1/500;
    rotationAndPerspectiveTransform = CATransform3DRotate(rotationAndPerspectiveTransform, angle * M_PI / 180, 1, 0, 0);
    view.layer.transform = rotationAndPerspectiveTransform;
    view.layer.edgeAntialiasingMask = kCALayerLeftEdge | kCALayerRightEdge | kCALayerBottomEdge | kCALayerTopEdge;
}


@end
