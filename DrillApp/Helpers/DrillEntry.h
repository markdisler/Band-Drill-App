//
//  DrillEntry.h
//  DrillApp
//
//  Created by Mark Disler on 3/28/18.
//  Copyright © 2018 Mark. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DrillEntry : NSObject

+ (instancetype)drillEntryWithSetNumber:(NSInteger)set counts:(NSInteger)counts position:(NSString *)position;
@property (nonatomic, assign) NSInteger set;
@property (nonatomic, assign) NSInteger counts;
@property (nonatomic, strong) NSString *position;

@end
