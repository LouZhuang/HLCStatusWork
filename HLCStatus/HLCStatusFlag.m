//
//  HLCStatusFlag.m
//  HLCStatus
//
//  Created by huanglch on 16/8/11.
//  Copyright © 2016年 huanglch. All rights reserved.
//

#import "HLCStatusFlag.h"
#import <UIKit/UIKit.h>

#define HLCStatusTextFont [UIFont systemFontOfSize:12]
static UIWindow *window_;
/// 定时器
static NSTimer *timer_;
@implementation HLCStatusFlag


+(void)showWindow{
    CGFloat windowH = 20;
    CGRect frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, windowH);
    window_ = [[UIWindow alloc]init];
    window_.frame = frame;
    window_.backgroundColor = [UIColor lightGrayColor];
    window_.windowLevel = UIWindowLevelAlert;
    window_.hidden = NO;

}

+(void)showSuccessMessage:(NSString *)sucMesg
{
    [self showWindow];
    [timer_ invalidate];
    UIImage *image = [UIImage imageNamed:@"success"];
    [self showButton:@"加载成功" andImage:image];
    timer_ = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(showHidden) userInfo:nil repeats:NO];
    
}

+(void)showErrorMessage:(NSString *)errorMesg
{
    [self showWindow];
    [timer_ invalidate];
    UIImage *image = [UIImage imageNamed:@"error"];
    [self showButton:@"加载失败" andImage:image];
    timer_ = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(showHidden) userInfo:nil repeats:NO];
    
}

+(void)showLoadingMessage:(NSString *)loadMesg
{
    [self showWindow];
    [timer_ invalidate];
    [self showButton:@"正在加载" andImage:nil];
    UIActivityIndicatorView *indicatorView = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
    [window_ addSubview:indicatorView];
    indicatorView.center = CGPointMake(150, 10);
    [indicatorView startAnimating];
    timer_ = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(showHidden) userInfo:nil repeats:NO];
}

+(void)showNomalMessage:(NSString *)nomalMesg andImage:(UIImage *)image
{
    
}

+(void)showHidden
{
    window_ = nil;
    timer_ = nil;
}

+(void)showButton:(NSString *)title andImage:(UIImage *)image
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:image forState:UIControlStateNormal];
    [btn setTitle:title forState:UIControlStateNormal];
    btn.titleLabel.font = HLCStatusTextFont;
    btn.frame = window_.bounds;
    btn.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
    [window_ addSubview:btn];
}

@end
