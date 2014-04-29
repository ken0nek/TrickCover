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
{
    int number;
    BOOL isAnimating;
    
    IBOutlet UIImageView *cameraImage;
    IBOutlet UIImageView *smallGear;
    IBOutlet UIImageView *largeGear;
    IBOutlet UIImageView *fbIcon;
    IBOutlet UIImageView *photoLibrary;
    
    IBOutlet UIButton *cameraButton;
    IBOutlet UIButton *aboutButton;
    IBOutlet UIButton *photoButton;
}

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
    
    [self displayViews];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Private method

- (void)displayViews
{
    cameraImage.transform = CGAffineTransformMakeRotation(22 * M_PI / 180);
    
    fbIcon.transform = CGAffineTransformMakeRotation(22 * M_PI / 180);
}

- (void)rotateGears{
    
}

#pragma mark - Orientation

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
