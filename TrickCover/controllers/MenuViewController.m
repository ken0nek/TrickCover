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
#import "MenuView.h"

@interface MenuViewController ()

//画面サイズを算出するための変数を用意（screenWには画面横幅、screenHには画面縦幅を代入）
@property(nonatomic) int screenW;
@property(nonatomic) int screenH;

//キャッチコピーを閲覧するためのUIViewを用意する※strongを指定してポインタを掴んでおかないと解放されてしまう
@property (nonatomic, strong) MenuView *mv;

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
    
    //端末の画面サイズを取得する
    CGRect deviceScreenSize = [[UIScreen mainScreen] bounds];
    
    //画面サイズの横幅、縦幅を定義した変数にそれぞれ代入する
    self.screenW = deviceScreenSize.size.width;
    self.screenH = deviceScreenSize.size.height;
    
    MenuView *mv = [[MenuView alloc] initWithFrame:CGRectMake(0, 0, self.screenW, self.screenH)];
    self.view = mv;
    
    self.i = 0;
    
}

- (void)viewWillAppear:(BOOL)animated
{
    self.isAnimating = NO;
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
