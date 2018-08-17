//
//  DAImageButton.h
//
//  Created by Mark Disler on 10/14/17.
//  Copyright © 2017 mark. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DAImageButton : UIButton

+ (instancetype)buttonWithImageName:(NSString *)imgName;

- (id)initWithFrame:(CGRect)frame imageName:(NSString *)imgName;
- (void)setEnabled:(BOOL)enabled;

@end
