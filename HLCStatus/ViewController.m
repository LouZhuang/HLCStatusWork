//
//  ViewController.m
//  HLCStatus
//
//  Created by huanglch on 16/8/11.
//  Copyright © 2016年 huanglch. All rights reserved.
//

#import "ViewController.h"
#import "HLCStatusFlag.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)window:(id)sender {
    [HLCStatusFlag showWindow];
}

- (IBAction)success:(id)sender {
    [HLCStatusFlag showSuccessMessage:@"哈哈"];
}
- (IBAction)error:(id)sender {
    [HLCStatusFlag showErrorMessage:@"哈哈"];
}
- (IBAction)nomal:(id)sender {
}
- (IBAction)hid:(id)sender {
    [HLCStatusFlag showLoadingMessage:@"哈哈"];
}
@end
