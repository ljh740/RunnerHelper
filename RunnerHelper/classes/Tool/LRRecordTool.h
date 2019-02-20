//
//  LRRecordTool.h
//  RunnerHelper
//
//  Created by jie on 2019/2/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LRRecordTool : NSObject
/** 读取数据 */
+(NSString *) loadByKey:(NSString *) key;
/** 写入数据 */
+(void) writeByKey:(NSString *) key value:(NSString *) value;
@end

NS_ASSUME_NONNULL_END
