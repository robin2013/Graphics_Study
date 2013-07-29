//
//  ViewController.m
//  Graphics_Study
//
//  Created by Robin on 13-7-29.
//  Copyright (c) 2013年 Robin. All rights reserved.
//

#import "ViewController.h"
#import "ImageViewController.h"
#import "FontViewController.h"
#import "StrokeViewController.h"
#import "PathViewController.h"
#import "GradienViewController.h"
@interface ViewController ()
{
    UITextField *text;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)btnFontClick:(UIButton *)sender {
    FontViewController *font = [[FontViewController alloc] init];
    [self.navigationController pushViewController:font animated:YES];
    [font release];
}

- (IBAction)btnImageClick:(id)sender {
    ImageViewController *img = [[ImageViewController alloc] init];
    [self.navigationController pushViewController:img animated:YES];
    [img release];

}

- (IBAction)btnStrokeClick:(id)sender {
    StrokeViewController *stroke = [[StrokeViewController alloc] init];
    [self.navigationController pushViewController:stroke animated:YES];
    [stroke release];

}

- (IBAction)btnPathClick:(id)sender {
    PathViewController *stroke = [[PathViewController alloc] init];
    [self.navigationController pushViewController:stroke animated:YES];
    [stroke release];
}

- (IBAction)btnGradientClick:(id)sender {
    GradienViewController *stroke = [[GradienViewController alloc] init];
    [self.navigationController pushViewController:stroke animated:YES];
    [stroke release];
}
@end
