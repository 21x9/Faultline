//
//  MEAViewController.m
//  Shake
//
//  Created by Mark Adams on 5/13/14.
//  Copyright (c) 2014 Mark Adams. All rights reserved.
//

#import "MEAViewController.h"

@interface MEAViewController ()

@property (nonatomic) UIDynamicAnimator *animator;
@property (weak, nonatomic) IBOutlet UIView *box;

@end

@implementation MEAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.animator = [UIDynamicAnimator new];

    UISnapBehavior *snap = [[UISnapBehavior alloc] initWithItem:self.box snapToPoint:self.view.center];
    snap.damping = 0.075;
    [self.animator addBehavior:snap];

    UIDynamicItemBehavior *behavior = [[UIDynamicItemBehavior alloc] initWithItems:@[self.box]];
    behavior.allowsRotation = NO;
    //behavior.resistance = 2;
    behavior.density = 15;
    [self.animator addBehavior:behavior];
}

- (IBAction)shake:(id)sender
{
    UIPushBehavior *push = [[UIPushBehavior alloc] initWithItems:@[self.box] mode:UIPushBehaviorModeInstantaneous];
    push.pushDirection = CGVectorMake(1, 0);
    push.magnitude = 200;
    [self.animator addBehavior:push];
    push.active = YES;
}

@end
