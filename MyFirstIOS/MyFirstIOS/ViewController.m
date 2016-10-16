//
//  ViewController.m
//  MyFirstIOS
//
//  Created by liuliu on 10/16/16.
//  Copyright © 2016 liuliu. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()

@end

@implementation ViewController

@synthesize status, result;

- (void) simulateAnimation: (BOOL)userCalledHeads{
    BOOL coinLandedOnHeads = (arc4random() % 2) == 0;
    result.text = coinLandedOnHeads ? @"Heads" : @"Tails";
    
    if(coinLandedOnHeads == userCalledHeads)
        status.text = @"You are correct";
    else
        status.text = @"Sorry, your are wrong";
    
    CABasicAnimation *rotation = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    rotation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    rotation.fromValue = [NSNumber numberWithFloat:0.0f];
    rotation.toValue = [NSNumber numberWithFloat:720 * M_PI / 180.0f];
    rotation.duration = 2.0f;
    [status.layer addAnimation:rotation forKey:@"rotate"];
    
    CABasicAnimation *fade = [CABasicAnimation animationWithKeyPath:@"opacity"];
    fade.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    fade.fromValue = [NSNumber numberWithFloat:0.0f];
    fade.toValue = [NSNumber numberWithFloat:1.0f];
    fade.duration = 3.5f;
    [status.layer addAnimation:fade forKey:@"fade"];
}



- (IBAction) callHeaders{
    [self simulateAnimation:YES];
}

- (IBAction) callTails{
    [self simulateAnimation:NO];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.status = nil;
    self.result = nil;
}

//- (void) dealloc{
//    [status release];
//    [result release];
//    [super dealloc];
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
