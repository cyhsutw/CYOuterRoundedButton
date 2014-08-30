//
//  CYViewController.m
//  Demo
//
//  Created by Cheng-Yu Hsu on 8/30/14.
//  Copyright (c) 2014 ChengYu-Hsu. All rights reserved.
//

#import "CYViewController.h"
#import "CYOuterRoundedButton.h"
#import "UIImage+UIColor.h"

@interface CYViewController ()

@end

@implementation CYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    UIColor *normalColor = [UIColor colorWithRed:22.0/255.0 green:160.0/255.0 blue:133.0/255.0 alpha:1.0];
    
    CYOuterRoundedButton *button = [[CYOuterRoundedButton alloc] initWithFrame:CGRectMake(40, 80, 120, 35) radius:4];
    [button.titleLabel setFont:[UIFont fontWithName:@"AvenirNextCondensed-DemiBoldItalic" size:18.0]];
    [button setAdjustsImageWhenHighlighted:NO];
    [button setBackgroundImage:[UIImage imageWithColor:normalColor] forState:UIControlStateNormal];
    [button setTitle:@"Tab" forState:UIControlStateNormal];
    
    UIView *background = [[UIView alloc] initWithFrame:CGRectMake(0,
                                                                  CGRectGetMaxY(button.frame),
                                                                  CGRectGetWidth(self.view.frame),
                                                                  CGRectGetHeight(self.view.frame) - CGRectGetMaxY(button.frame))];
    [background setBackgroundColor:normalColor];
    
    [self.view addSubview:button];
    [self.view addSubview:background];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
