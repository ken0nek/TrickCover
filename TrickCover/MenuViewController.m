//
//  MenuViewController.m
//  TrickCover
//
//  Created by Ken Tominaga on 2014/03/06.
//  Copyright (c) 2014年 Tommy. All rights reserved.
//

#import "MenuViewController.h"
#import "CameraViewController.h"
#import "FrameViewController.h"

@interface MenuViewController ()

@property (nonatomic, strong) UIImageView *cameraImage;
@property (nonatomic, strong) UIImageView *smallGear;
@property (nonatomic, strong) UIImageView *largeGear;
@property (nonatomic, strong) UIImageView *fbIcon;

@property (nonatomic) int i;
@property (nonatomic) BOOL isAnimating;

@end

@implementation MenuViewController

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

// 回転処理が存在するかどうかを返す（回転しない）
- (BOOL)shouldAutorotate
{
    return NO;
}

// 回転する方向を指定（横）
- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskLandscapeRight;
}

@end
