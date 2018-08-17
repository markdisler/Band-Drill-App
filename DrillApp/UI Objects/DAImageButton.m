//
//  CCImageButton.m
//  CapCalc Pro
//
//  Created by Mark Disler on 10/14/17.
//  Copyright © 2017 mark. All rights reserved.
//

#import "DAImageButton.h"

@implementation DAImageButton

+ (instancetype)buttonWithImageName:(NSString *)imgName {
    return [[DAImageButton alloc] initWithFrame:CGRectZero imageName:imgName];
}

- (id)initWithFrame:(CGRect)frame imageName:(NSString *)imgName {
    self = [DAImageButton buttonWithType:UIButtonTypeSystem];
    if (self) {
        self.frame = frame;
        [self setIcon:imgName];
    }
    return self;
}

#pragma mark - Helpers

- (void)setEnabled:(BOOL)enabled {
    self.enabled = enabled;
    self.alpha = enabled ? 1.0 : 0.5;
}

- (void)setIcon:(NSString *)s {
    UIImage *btnImage = [UIImage imageNamed:s];
    [self setImage:[btnImage imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate] forState:UIControlStateNormal];
    self.imageEdgeInsets = UIEdgeInsetsMake(2, 2, 2, 2);
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    CGRect relativeFrame = self.bounds;
    UIEdgeInsets hitTestEdgeInsets = UIEdgeInsetsMake(-20, -20, -20, -20);
    CGRect hitFrame = UIEdgeInsetsInsetRect(relativeFrame, hitTestEdgeInsets);
    return CGRectContainsPoint(hitFrame, point);
}

@end
