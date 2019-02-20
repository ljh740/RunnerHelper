//
//  LRRecordTool.m
//  RunnerHelper
//
//  Created by jie on 2019/2/20.
//

#import "LRRecordTool.h"

@implementation LRRecordTool
+(NSString *) loadByKey:(NSString *) key
{
    return [self loadWithFile:key];
}

+(void) writeByKey:(NSString *) key value:(NSString *) value
{
    [self writeWithFile:key value:value];
}

+(void) mkdir
{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSString *recordsPath=[self recordsPath];
    if(![fileManager fileExistsAtPath:recordsPath]){
        [fileManager createDirectoryAtPath:recordsPath withIntermediateDirectories:YES attributes:nil error:nil];
    }
}

+(NSString *) recordsPath
{
    NSString *home = NSHomeDirectory();
    NSString *recordsPath=[NSString stringWithFormat:@"%@/Documents/records",home];
    return recordsPath;
}

+(NSString *) loadWithFile:(NSString *) fileName
{
    [self mkdir];
    NSString *recordsPath=[self recordsPath];
    NSString *filePath=[recordsPath stringByAppendingFormat:@"%@.record",fileName];
    NSString *str=[NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
    if (str) {
        return str;
    }
    return @"";
}

+(void) writeWithFile:(NSString *) fileName value:(NSString *) value
{
    [self mkdir];
    NSString *recordsPath=[self recordsPath];
    NSString *filePath=[recordsPath stringByAppendingFormat:@"%@.record",fileName];
    [value writeToFile:filePath atomically:YES encoding:NSUTF8StringEncoding error:nil];
}

@end
