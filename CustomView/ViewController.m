//
//  ViewController.m
//  CustomView
//
//  Created by Erick Bennett on 12/15/14.
//  Copyright (c) 2014 Erick Bennett. All rights reserved.
//

#import "ViewController.h"
#import "LuigisCustomView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //Initializing and adding our custom view
    
    //Alloc and init our custom view
    LuigisCustomView *luigisViewStatic = [[LuigisCustomView alloc] init];
    
    //Pass in our image
    luigisViewStatic.centerImage.image = [UIImage imageNamed:@"Luigi_Image.png"];
    
    //Set our display text
    luigisViewStatic.bottomLabel.text = @"This is Luigi";
    
    //Add this view as a subview to our viewcontrollers view
    [self.view addSubview:luigisViewStatic];
    
    
    //Adding second version of same type of object
    
    //Add our custom view using our initWithFrame option
    LuigisCustomView *luigisViewWithFrame = [[LuigisCustomView alloc] initWithFrame:CGRectMake(0, 0, 80, 80)];

    
    //Pass in our image
    luigisViewWithFrame.centerImage.image = [UIImage imageNamed:@"Luigi_Image.png"];
    
    //Set our display text
    luigisViewWithFrame.bottomLabel.text = @"Luigi";
    
    //Since the first one is in the upper left have corner, lets display this on in the center of our screen.
    luigisViewWithFrame.center = self.view.center;
    
    //Add this view as a subview to our viewcontrollers view
    [self.view addSubview:luigisViewWithFrame];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
