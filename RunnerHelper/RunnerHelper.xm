// See http://iphonedevwiki.net/index.php/Logos

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

%hook FMTradeOrderDetailViewController
-(void) rightAction:(id) sender
{
//替换功能
    __weak __typeof__(self) weakSelf = self;
    dispatch_async(dispatch_get_main_queue(), ^{
        [weakSelf presentViewController:[LRRecordViewController alertWithKey:weakSelf.vm.tid] animated:YES completion:nil];
    });
}

%end
