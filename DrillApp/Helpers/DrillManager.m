//
//  DrillManager.m
//  DrillApp
//
//  Created by Mark Disler on 3/28/18.
//  Copyright © 2018 Mark. All rights reserved.
//

#import "DrillManager.h"

@implementation DrillManager

+ (NSArray *)thisWillBe {
    
    NSMutableArray *drill = [NSMutableArray array];
    
    [drill addObject:[DrillEntry drillEntryWithSetNumber:1 counts:0 position:@"On 50 yd ln \n14.0 steps in front of Home Hash (NCAA)"]];
    [drill addObject:[DrillEntry drillEntryWithSetNumber:2 counts:24 position:@"On 50 yd ln \n14.0 steps in front of Home Hash (NCAA)"]];
    [drill addObject:[DrillEntry drillEntryWithSetNumber:3 counts:42 position:@"Left: 2.0 steps outside 50 yd ln \n10.0 steps in front of Home Hash (NCAA)"]];
    [drill addObject:[DrillEntry drillEntryWithSetNumber:4 counts:20 position:@"On 50 yd ln \n8.0 steps in front of Home Hash (NCAA)"]];
    [drill addObject:[DrillEntry drillEntryWithSetNumber:5 counts:24 position:@"On 50 yd ln \n14.0 steps in front of Home Hash (NCAA)"]];
    [drill addObject:[DrillEntry drillEntryWithSetNumber:6 counts:16 position:@"Left: On 40 yd ln \n12.0 steps behind Home side line"]];
    [drill addObject:[DrillEntry drillEntryWithSetNumber:7 counts:16 position:@"On 50 yd ln \n8.0 steps behind Home side line"]];
    [drill addObject:[DrillEntry drillEntryWithSetNumber:8 counts:16 position:@"Right: 1.5 steps outside 45 yd ln \n13.75 steps behind Home side line"]];
    [drill addObject:[DrillEntry drillEntryWithSetNumber:9 counts:52 position:@"Right: On 45 yd ln \n8.0 steps in front of Home Hash (NCAA)"]];
    [drill addObject:[DrillEntry drillEntryWithSetNumber:10 counts:44 position:@"Right: 4.0 steps outside 40 yd ln \n12.0 steps in front of Home Hash (NCAA)"]];
    [drill addObject:[DrillEntry drillEntryWithSetNumber:11 counts:16 position:@"Right: 2.0 steps outside 45 yd ln \n13.0 steps in front of Home Hash (NCAA)"]];
    [drill addObject:[DrillEntry drillEntryWithSetNumber:12 counts:12 position:@"Right: On 40 yd ln \n15.0 steps behind Home side line"]];
    [drill addObject:[DrillEntry drillEntryWithSetNumber:13 counts:32 position:@"Right: On 40 yd ln \n9.0 steps in front of Home Hash (NCAA)"]];
    [drill addObject:[DrillEntry drillEntryWithSetNumber:14 counts:32 position:@"Right: On 40 yd ln \n16.0 steps behind Home side line"]];
    [drill addObject:[DrillEntry drillEntryWithSetNumber:15 counts:16 position:@"Right: On 40 yd ln \n16.0 steps behind Home side line"]];
    
    return [drill copy];
}

+ (NSArray *)sss {
    
    NSMutableArray *drill = [NSMutableArray array];
    
    [drill addObject:[DrillEntry drillEntryWithSetNumber:43 counts:0 position:@"Right: 4.0 steps outside 40 yd ln \n8.0 steps in front of Home Hash (NCAA)"]];
    [drill addObject:[DrillEntry drillEntryWithSetNumber:44 counts:16 position:@"Right: 1.0 steps inside 35 yd ln \n14.5 steps in front of Home Hash (NCAA)"]];
    [drill addObject:[DrillEntry drillEntryWithSetNumber:45 counts:16 position:@"Right: 1.25 steps inside 25 yd ln \n15.75 steps behind Home side line"]];
    [drill addObject:[DrillEntry drillEntryWithSetNumber:46 counts:8 position:@"Right: 3.75 steps outside 30 yd ln \n14.0 steps in front of Home Hash (NCAA)"]];
    [drill addObject:[DrillEntry drillEntryWithSetNumber:47 counts:36 position:@"Right: On 20 yd ln \n12.0 steps in front of Home Hash (NCAA)"]];
    [drill addObject:[DrillEntry drillEntryWithSetNumber:48 counts:24 position:@"Right: On 20 yd ln \n4.0 steps behind Home side line"]];
    [drill addObject:[DrillEntry drillEntryWithSetNumber:49 counts:18 position:@"Right: 4.0 steps outside 30 yd ln \nOn Home side line"]];
    [drill addObject:[DrillEntry drillEntryWithSetNumber:50 counts:24 position:@"Right: 4.0 steps outside 20 yd ln \n4.0 steps behind Home side line"]];
    [drill addObject:[DrillEntry drillEntryWithSetNumber:51 counts:16 position:@"Right: 4.0 steps outside 20 yd ln \n12.0 steps in front of Home Hash (NCAA)"]];
    [drill addObject:[DrillEntry drillEntryWithSetNumber:52 counts:8 position:@"Right: 4.0 steps outside 20 yd ln \n6.0 steps in front of Home Hash (NCAA)"]];
    [drill addObject:[DrillEntry drillEntryWithSetNumber:53 counts:16 position:@"Right: 4.0 steps outside 20 yd ln \n6.0 steps in front of Home Hash (NCAA)"]];
    [drill addObject:[DrillEntry drillEntryWithSetNumber:54 counts:16 position:@"Right: 4.0 steps outside 20 yd ln \n6.0 steps in front of Home Hash (NCAA)"]];
    [drill addObject:[DrillEntry drillEntryWithSetNumber:55 counts:24 position:@"Right: 2.0 steps inside 30 yd ln \n3.0 steps behind Home Hash (NCAA)"]];
    [drill addObject:[DrillEntry drillEntryWithSetNumber:56 counts:10 position:@"Right: 1.5 steps inside 35 yd ln \n8.5 steps in front of Visitor Hash (NCAA)"]];
    [drill addObject:[DrillEntry drillEntryWithSetNumber:57 counts:38 position:@"Right: 0.5 steps inside 25 yd ln \n9.25 steps behind Home Hash (NCAA)"]];
    [drill addObject:[DrillEntry drillEntryWithSetNumber:58 counts:16 position:@"Right: 0.75 steps outside 25 yd ln \n1.5 steps in front of Home Hash (NCAA)"]];
    [drill addObject:[DrillEntry drillEntryWithSetNumber:59 counts:16 position:@"Right: 0.5 steps inside 25 yd ln \n9.25 steps behind Home Hash (NCAA)"]];
    [drill addObject:[DrillEntry drillEntryWithSetNumber:60 counts:32 position:@"Right: 4.0 steps outside 30 yd ln \n12.0 steps behind Visitor Hash (NCAA)"]];
    [drill addObject:[DrillEntry drillEntryWithSetNumber:61 counts:32 position:@"Right: 1.5 steps outside 20 yd ln \n2.25 steps in front of Home Hash (NCAA)"]];
    [drill addObject:[DrillEntry drillEntryWithSetNumber:62 counts:20 position:@"Right: 3.5 steps outside 20 yd ln \n2.75 steps behind Home side line"]];
    [drill addObject:[DrillEntry drillEntryWithSetNumber:63 counts:16 position:@"Right: 2.0 steps inside 25 yd ln \n13.75 steps in front of Home side line"]];
    
    return [drill copy];
}

+ (NSArray *)example {
    NSMutableArray *drill = [NSMutableArray array];
    for (int i = 0; i < 20; i++) {
        [drill addObject:[DrillEntry drillEntryWithSetNumber:i counts:16 position:@"Side 2: 2.0 steps inside 25 yd ln\n10.0 steps behind Visitor Hash"]];
    }
    return [drill copy];
}


@end
