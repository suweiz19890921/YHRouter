//
//  BBPhoneRouter.h
//  
//
//  Created by zhangxinzheng on 8/20/15.
//
//

#import "YHRouter.h"

@interface YHRouter : HHRouter

+ (BOOL)pushUrl:(NSString *)url animated:(BOOL)animated;
+ (BOOL)presentUrl:(NSString *)url animated:(BOOL)animated;

+ (BOOL)processUnknowUrl:(NSString *)url animated:(BOOL)animated;

@end
