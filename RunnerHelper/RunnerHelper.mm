#line 1 "/Volumes/code/tweakCode/RunnerHelper/RunnerHelper/RunnerHelper.xm"


#if TARGET_OS_SIMULATOR
#error Do not support the simulator, please use the real iPhone Device.
#endif

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "LRRecordViewController.h"
#import "FMTradeOrderDetailViewModel.h"


@interface FMTradeOrderDetailViewController : UIViewController
@property(retain, nonatomic) FMTradeOrderDetailViewModel *vm;
@end


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class FMTradeOrderDetailViewController; 
static void (*_logos_orig$_ungrouped$FMTradeOrderDetailViewController$rightAction$)(_LOGOS_SELF_TYPE_NORMAL FMTradeOrderDetailViewController* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$FMTradeOrderDetailViewController$rightAction$(_LOGOS_SELF_TYPE_NORMAL FMTradeOrderDetailViewController* _LOGOS_SELF_CONST, SEL, id); 

#line 17 "/Volumes/code/tweakCode/RunnerHelper/RunnerHelper/RunnerHelper.xm"


static void _logos_method$_ungrouped$FMTradeOrderDetailViewController$rightAction$(_LOGOS_SELF_TYPE_NORMAL FMTradeOrderDetailViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id sender) {

    __weak __typeof__(self) weakSelf = self;
    dispatch_async(dispatch_get_main_queue(), ^{
        [weakSelf presentViewController:[LRRecordViewController alertWithKey:weakSelf.vm.tid] animated:YES completion:nil];
    });
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$FMTradeOrderDetailViewController = objc_getClass("FMTradeOrderDetailViewController"); MSHookMessageEx(_logos_class$_ungrouped$FMTradeOrderDetailViewController, @selector(rightAction:), (IMP)&_logos_method$_ungrouped$FMTradeOrderDetailViewController$rightAction$, (IMP*)&_logos_orig$_ungrouped$FMTradeOrderDetailViewController$rightAction$);} }
#line 28 "/Volumes/code/tweakCode/RunnerHelper/RunnerHelper/RunnerHelper.xm"
