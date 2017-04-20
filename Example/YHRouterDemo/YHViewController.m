//
//  YHViewController.m
//  YHRouterDemo
//
//  Created by 617907240@qq.com on 04/20/2017.
//  Copyright (c) 2017 617907240@qq.com. All rights reserved.
//

#import "YHViewController.h"
@interface YHViewController ()

@end

@implementation YHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *pushButton = [UIButton new];
    [pushButton addTarget:self action:@selector(testPush) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushButton];
    pushButton.frame = CGRectMake(100, 100, 100, 50);
    [pushButton setTitle:@"RouterPush" forState:UIControlStateNormal];
	// Do any additional setup after loading the view, typically from a nib.
    UIButton *preButton = [UIButton new];
    [preButton addTarget:self action:@selector(testPre) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:preButton];
    preButton.frame = CGRectMake(100, 160, 100, 50);
    [preButton setTitle:@"RouterPre" forState:UIControlStateNormal];
    preButton.backgroundColor =  [UIColor redColor];
    pushButton.backgroundColor = [UIColor blueColor];

}


- (void)testPush {
    [YHRouter pushUrl:@"fishPlace/1" animated:YES];
}

- (void)testPre{
    [YHRouter presentUrl:@"fishPlace/2" animated:YES];
}
@end
