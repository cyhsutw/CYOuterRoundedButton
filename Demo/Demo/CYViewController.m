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

    UIColor *normalColor = [UIColor colorWithRed:15.0/255.0f green:174.0/255.0f blue:104.0/255.0f alpha:1.0];
    
    CYOuterRoundedButton *button = [[CYOuterRoundedButton alloc] initWithFrame:CGRectMake(180, 230, 120, 35) radius:4];
    [button.titleLabel setFont:[UIFont fontWithName:@"AvenirNextCondensed-DemiBoldItalic" size:16.0]];
    [button setAdjustsImageWhenHighlighted:NO];
    [button setBackgroundImage:[UIImage imageWithColor:normalColor] forState:UIControlStateNormal];
    [button setTitle:@"Code" forState:UIControlStateNormal];
    
    [self.view addSubview:button];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
