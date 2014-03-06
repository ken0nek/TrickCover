//
//  MenuView.m
//  TrickCover
//
//  Created by Ken Tominaga on 2014/03/07.
//  Copyright (c) 2014年 Tommy. All rights reserved.
//

#import "MenuView.h"

@implementation MenuView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        // set size
        //self.frame = CGRectMake(0, 0, 568, 320);
        
        // set backgrouondcolor
        self.backgroundColor = [UIColor whiteColor];
        
        self.backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"trickcover_title.png"]];
        self.backgroundImage.frame = CGRectMake(0, 0, 568, 320);
        [self addSubview:self.backgroundImage];
        
        self.cameraImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"CameraButton.png"]];
        self.cameraImage.frame = CGRectMake(345, 195, 100, 80);
        self.cameraImage.contentMode = UIViewContentModeScaleAspectFit;
        self.cameraImage.transform = CGAffineTransformMakeRotation(22 * M_PI / 180);
        [self addSubview:self.cameraImage];
        
        self.smallGear = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"gear.png"]];
        self.smallGear.frame = CGRectMake(140, 170, 30, 30);
        self.smallGear.contentMode = UIViewContentModeScaleAspectFit;
        [self addSubview:self.smallGear];
        
        self.largeGear = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"gear.png"]];
        self.largeGear.frame = CGRectMake(165, 145, 50, 50);
        self.largeGear.contentMode = UIViewContentModeScaleAspectFit;
        [self addSubview:self.largeGear];
        
        self.fbIcon = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"facebook.png"]];
        self.fbIcon.frame = CGRectMake(62, 92, 40, 100);
        self.fbIcon.contentMode = UIViewContentModeScaleAspectFit;
        self.fbIcon.transform = CGAffineTransformMakeRotation(22 * M_PI / 180);
        [self addSubview:self.fbIcon];
    }
    
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void)rotateGear:(UIImageView *)gear1 and:(UIImageView *)gear2
{
    
}

@end
