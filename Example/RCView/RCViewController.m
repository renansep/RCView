//
//  RCViewController.m
//  RCView
//
//  Created by renansep on 01/07/2016.
//  Copyright (c) 2016 renansep. All rights reserved.
//

#import "RCViewController.h"

#import "RCViewSubclass.h"

@interface RCViewController ()

@property (weak, nonatomic) IBOutlet RCViewSubclass *myStoryboardView;

@end

@implementation RCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    _myStoryboardView.label.text = @"View instantiaded via storyboard.";
    
    RCViewSubclass *myView = [[RCViewSubclass alloc] initWithLabelText:@"View instatiated via code."];
    myView.frame = CGRectMake(15.0f, 200.0f, self.view.bounds.size.width - 30.0f, 100.0f);
    [self.view addSubview:myView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
