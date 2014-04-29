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
    
    UIImageView *cameraImage;
    UIImageView *smallGear;
    UIImageView *largeGear;
    UIImageView *fbIcon;
    UIImageView *photoLibrary;
    
    IBOutlet UIButton *cameraButton;
    IBOutlet UIButton *aboutButton;
    IBOutlet UIButton *albumButton;
    IBOutlet UIButton *fbButton;
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
    
    isAnimating = NO;
    
    [self displayViews];
    
    [self rotateGears];
    
    [self moveCameraImage];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    isAnimating = NO;
}

- (void)viewDidAppear:(BOOL)animated
{
    isAnimating = NO;
}

#pragma mark - Private method

- (void)displayViews
{
    cameraImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"CameraButton.png"]];
    cameraImage.frame = CGRectMake(345, 195, 100, 80);
    cameraImage.contentMode = UIViewContentModeScaleAspectFit;
    cameraImage.transform = CGAffineTransformMakeRotation(22 * M_PI / 180);
    [self.view addSubview:cameraImage];
    
    smallGear = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"gear.png"]];
    smallGear.frame = CGRectMake(140, 170, 30, 30);
    smallGear.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:smallGear];
    
    largeGear = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"gear.png"]];
    largeGear.frame = CGRectMake(165, 145, 50, 50);
    largeGear.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:largeGear];
    
    photoLibrary = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"PhotoLibrary.png"]];
    photoLibrary.frame = CGRectMake(236, 175, 70, 70);
    photoLibrary.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:photoLibrary];
    
    fbIcon = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"facebook.png"]];
    fbIcon.frame = CGRectMake(62, 92, 40, 100);
    fbIcon.contentMode = UIViewContentModeScaleAspectFit;
    fbIcon.transform = CGAffineTransformMakeRotation(22 * M_PI / 180);
    [self.view addSubview:fbIcon];
    
}

- (void)rotateGears
{
    if (!isAnimating) {
        [UIView animateWithDuration:10.0f delay:0.0f options:UIViewAnimationOptionRepeat animations:^{
            
            smallGear.transform = CGAffineTransformRotate(smallGear.transform, 120 * M_PI / 180);
            largeGear.transform = CGAffineTransformRotate(largeGear.transform, -120 * M_PI / 180);
            
        }completion:^(BOOL finished){
            
        }];
    }
}

- (void)moveCameraImage
{
    if (!isAnimating){
        
        [UIView setAnimationDelegate:self];
        [UIView animateWithDuration:1.0f
                         animations:^{
                             if (number % 2 == 0) {
                                 cameraImage.transform = CGAffineTransformMakeRotation(16 * M_PI / 180);
                             } else {
                                 cameraImage.transform = CGAffineTransformMakeRotation(24 * M_PI / 180);
                             }
                         }completion:^(BOOL finished){ // アニメーション終了時の設定
                             number = 1 - (number % 2);
                             [self moveCameraImage];
                             NSLog(@"camera = %d", number);
                             NSLog(@"isAnimating = %d", isAnimating);
                         }];
    }

}

// アニメーションの終了時にコールされる。
- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag {
    isAnimating = NO; // ここでフラグを落とす。
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
