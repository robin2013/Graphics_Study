//
//  ImageViewController.m
//  Graphics_Study
//
//  Created by Robin on 13-7-29.
//  Copyright (c) 2013年 Robin. All rights reserved.
//

#import "ImageViewController.h"
#import "ImageView.h"
@interface ImageViewController ()

@end

@implementation ImageViewController

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
- (void)drawView
{
    ImageView *img = [[ImageView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:img];
    [img release];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
