//
//  FontViewController.m
//  Graphics_Study
//
//  Created by Robin on 13-7-29.
//  Copyright (c) 2013年 Robin. All rights reserved.
//

#import "FontViewController.h"
#import "FontView.h"
@interface FontViewController ()
{
     FontView *fView;
    UITextField *text;

}
@end

@implementation FontViewController

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
    [self addFontView];
    [self addTextFile];
    [self addBtn];
    [self.view setBackgroundColor:[UIColor redColor]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)addTextFile
{
    text = [[UITextField alloc] initWithFrame:CGRectMake(30, 150, 100, 50)];
    [self.view addSubview:text];
    [text setBackgroundColor:[UIColor grayColor]];
    [text release];
}
- (void)addBtn
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    [btn setFrame:CGRectMake(0, 110, 60, 60)];
    [btn addTarget:self action:@selector(redraw) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}
- (void)redraw
{
    static int i ;
    i ++;
    fView.key= text.text;
    [fView setNeedsDisplay];
}
- (void)addFontView
{
    fView= [[FontView alloc] init];
    [fView setFrame:CGRectMake(0, 0, 300, 100)];
    [self.view addSubview:fView];
}
@end
