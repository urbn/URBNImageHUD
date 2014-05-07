//
//  URBNDemoViewController.m
//  URBNImageHud
//
//  Created by Corey Floyd on 5/6/14.
//  Copyright (c) 2014 URBN. All rights reserved.
//

#import "URBNDemoViewController.h"
#import "URBNImageHUD.h"

@interface URBNDemoViewController ()

@end

@implementation URBNDemoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    [URBNImageHUD setAnimationImage:[UIImage imageNamed:@"hud_graphic"]];
    [URBNImageHUD setImageAnimationDuration:1.5];
    
    // Do any additional setup after loading the view from its nib.
}
- (void)viewDidAppear:(BOOL)animated{
    
    [super viewDidAppear:animated];
    
    [URBNImageHUD show];

}


@end
