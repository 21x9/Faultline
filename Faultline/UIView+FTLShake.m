//
//  UIView+FLIShake.m
//  Shake
//
//  Created by Mark Adams on 5/14/14.
//  Copyright (c) 2014 Mark Adams. All rights reserved.
//

#import "UIView+FTLShake.h"

@implementation UIView (FLIShake)

- (void)ftl_shake
{
    UIPushBehavior *push = [[UIPushBehavior alloc] initWithItems:@[self.box] mode:UIPushBehaviorModeInstantaneous];
    push.pushDirection = CGVectorMake(1, 0);
    push.magnitude = 200;
    [self.animator addBehavior:push];
    push.active = YES;
}

@end
