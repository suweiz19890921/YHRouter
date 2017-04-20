
//
//

#import "HHRouter.h"

@interface YHRouter : HHRouter
@property (nonatomic, weak) UINavigationController *mainNavigator;
+ (BOOL)pushUrl:(NSString *)url animated:(BOOL)animated;
+ (BOOL)presentUrl:(NSString *)url animated:(BOOL)animated;


@end
