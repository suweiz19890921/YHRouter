
//
//


#import "YHRouter.h"

@implementation YHRouter

+ (void)initialize
{
//也可以添加多层级映射
//MARK: 需要添加类映射 在这添加就可以了 也可以扩展block映射
        [[YHRouter shared] map:@"/fishPlace/:fishPlaceId/" toControllerClass:NSClassFromString(@"YHFishPlaceController")];
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
    [[YHRouter shared].mainNavigator pushViewController:vc animated:animated];
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
    [[YHRouter shared].mainNavigator presentViewController:vc animated:animated completion:nil];
    return YES;

}



@end
