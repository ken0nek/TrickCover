//
//  InitialViewController.m
//  TrickCover
//
//  Created by Ken Tominaga on 2014/03/06.
//  Copyright (c) 2014年 Tommy. All rights reserved.
//

#import "InitialViewController.h"
#import "MenuViewController.h"

@interface InitialViewController ()

@end

@implementation InitialViewController

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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 横向きのスプラッシュ画面が作れないため、便宜的に縦向きのViewから横向きのViewに飛ばす
- (void)viewDidAppear:(BOOL)animated
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    MenuViewController *controller = [storyboard instantiateViewControllerWithIdentifier:@"Menu"];
    controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:controller animated:YES completion:nil];
    
    NSLog(@"%@", @"goMenu");
}

// 回転処理が存在するかどうかを返す（回転しない）
- (BOOL)shouldAutorotate
{
    return NO;
}

// 回転する方向を指定（縦）
- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}

@end
