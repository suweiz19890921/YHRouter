//
//  YHRouter.m
//  
//
//  Created by zhangxinzheng on 8/20/15.
//
//

#import "YHRouter.h"

@implementation YHRouter

+ (void)initialize
{
        [[YHRouter shared] map:@"/av/:avId/" toControllerClass:[BBPhonePlayerVideoInfoViewControllerM2 class]];
}

+ (BOOL)pushUrl:(NSString *)url animated:(BOOL)animated
{
    UIViewController *vc = [[YHRouter shared] matchController:url];
    if (!vc) {
        return NO;
    }
    if (vc.params[@"animation"]) {
        animated = [vc.params[@"animation"] boolValue];
    }
    [[BBPhoneNavigator sharedNavigator].navigationController pushViewController:vc animated:animated];
    return YES;
}

+ (BOOL)presentUrl:(NSString *)url animated:(BOOL)animated
{
    UIViewController *vc = [[YHRouter shared] matchController:url];
    if (!vc) {
        return NO;
    }
    if (vc.params[@"animation"]) {
        animated = [vc.params[@"animation"] boolValue];
    }
    [[BBPhoneNavigator sharedNavigator].navigationController presentViewController:vc animated:animated completion:nil];
    return YES;

}

+ (BOOL)_unownInternalPush:(NSString *)url animated:(BOOL)animated
{
    if ([url rangeOfString:@"/player/"].location != NSNotFound) {
        return [self presentUrl:url animated:animated];
    } else {
        return [self pushUrl:url animated:animated];
    }
}


@end
