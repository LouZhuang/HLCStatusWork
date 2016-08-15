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
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:@"success"] forState:UIControlStateNormal];
    [btn setTitle:@"加载成功" forState:UIControlStateNormal];
    btn.titleLabel.font = HLCStatusTextFont;
    btn.frame = window_.bounds;
    btn.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
    [window_ addSubview:btn];
    
  //  timer_ = [NSTimer scheduledTimerWithTimeInterval:<#(NSTimeInterval)#> invocation:<#(nonnull NSInvocation *)#> repeats:<#(BOOL)#>]
    
}

+(void)showErrorMessage:(NSString *)errorMesg
{
    
}

+(void)showLoadingMessage:(NSString *)loadMesg
{
}

+(void)showNomalMessage:(NSString *)nomalMesg andImage:(UIImage *)image
{
}

+(void)showHidden
{
    window_ = nil;
}
@end
