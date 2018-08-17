//
//  DrillVC.h
//  DrillApp
//
//  Created by Mark Disler on 3/26/18.
//  Copyright © 2018 Mark. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DrillVC : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) IBOutlet UIView *dropDownView;
@property (nonatomic, strong) IBOutlet UILabel *drillIdLabel;
@property (nonatomic, strong) IBOutlet UILabel *drillNameLabel;
@property (nonatomic, strong) IBOutlet UIButton *dropButton;
@property (nonatomic, strong) IBOutlet UIButton *settingsButton;

@property (nonatomic, strong) IBOutlet UIView *drillHeader;
@property (nonatomic, strong) IBOutlet UIView *shadowView;
@property (nonatomic, strong) IBOutlet UITableView *tableView;

@property (nonatomic, strong) IBOutlet UIStackView *stackView;


@end
