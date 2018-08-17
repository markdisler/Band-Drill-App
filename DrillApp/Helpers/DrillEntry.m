//
//  DrillEntry.m
//  DrillApp
//
//  Created by Mark Disler on 3/28/18.
//  Copyright © 2018 Mark. All rights reserved.
//

#import "DrillEntry.h"

@implementation DrillEntry

+ (instancetype)drillEntryWithSetNumber:(NSInteger)set counts:(NSInteger)counts position:(NSString *)position {

    DrillEntry *entry = [[DrillEntry alloc] init];
    entry.set = set;
    entry.counts = counts;
    entry.position = position;
    return entry;
}

@end
