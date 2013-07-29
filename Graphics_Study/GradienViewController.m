//
//  GradienViewController.m
//  Graphics_Study
//
//  Created by Robin on 13-7-29.
//  Copyright (c) 2013年 Robin. All rights reserved.
//

#import "GradienViewController.h"
#import "GradenView.h"
@interface GradienViewController ()

@end

@implementation GradienViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self drawView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)drawView
{
    GradenView *img = [[GradenView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:img];
    [img release];
}
@end
