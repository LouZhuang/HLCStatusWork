//
//  HLCStatusFlag.h
//  HLCStatus
//
//  Created by huanglch on 16/8/11.
//  Copyright © 2016年 huanglch. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HLCStatusFlag : NSObject
+(void)showWindow;
+(void)showNomalMessage:(NSString *)nomalMesg andImage:(UIImage *)image;

+(void)showSuccessMessage:(NSString *)sucMesg;

+(void)showLoadingMessage:(NSString *)loadMesg;

+(void)showErrorMessage:(NSString *)errorMesg;

+(void)showHidden;

@end
