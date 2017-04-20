//
//  YHFishPlaceController.m
//  YHRouterDemo
//
//  Created by 苏威 on 2017/4/20.
//  Copyright © 2017年 617907240@qq.com. All rights reserved.
//

#import "YHFishPlaceController.h"
@interface YHFishPlaceController ()

@property (nonatomic, assign) NSInteger fishPlaceId;
@end

@implementation YHFishPlaceController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.fishPlaceId = [[self.params objectForKey:@"fishPlaceId"] integerValue];
    if (self.fishPlaceId == 2) {
        //fromPresent
        self.view.backgroundColor = [UIColor redColor];
        UIButton *disMissBtn = [UIButton new];
        [self.view addSubview:disMissBtn];
        [disMissBtn addTarget:self action:@selector(dismiss) forControlEvents:UIControlEventTouchUpInside];
        [disMissBtn setTitle:@"disMiss" forState:UIControlStateNormal];
        disMissBtn.frame = CGRectMake(100, 100, 100, 50);
    } else if (self.fishPlaceId == 1) {
        //fromPush
        self.view.backgroundColor = [UIColor blueColor];
    }
}

- (void)dismiss {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
