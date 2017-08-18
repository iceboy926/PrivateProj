//
//  ViewController.m
//  PrivateTestPro
//
//  Created by zuoyongyong on 2017/8/18.
//  Copyright © 2017年 zuoyongyong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSBundle *b = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/Message.framework"];
    BOOL success = [b load];
    
    Class NetworkController = NSClassFromString(@"NetworkController");
    id nc = [NetworkController sharedInstance];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
