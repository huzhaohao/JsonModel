//
//  NSObject+HModel.m
//  json
//
//  Created by huzhaohao on 2019/8/8.
//  Copyright © 2019 huzhaohao. All rights reserved.
//

#import "NSObject+HModel.h"

@implementation NSObject (HModel)

+ (void)logKeyProperty:(NSArray *)keyArray{

    NSString *printStr = [NSString new];
    for (int i=0; i<keyArray.count; i++) {
        NSString *key = keyArray[i];
        NSString *propertyStr = [NSString stringWithFormat:@"\n@property (nonatomic)NSString *%@;",key];
        printStr = [NSString stringWithFormat:@"%@%@",printStr,propertyStr];
    }
    NSLog(@"%@",printStr);
}
+ (void)logKeyCopyProperty:(NSArray *)keyArray{

    NSString *printStr = [NSString new];
    for (int i=0; i<keyArray.count; i++) {
        NSString *key = keyArray[i];
        NSString *propertyStr = [NSString stringWithFormat:@"\n@property (nonatomic,copy)NSString *%@;",key];
        printStr = [NSString stringWithFormat:@"%@%@",printStr,propertyStr];
    }
    NSLog(@"%@",printStr);
}

+ (void)logKeyPropertyGet:(NSArray *)keyArray{
    NSString *printStr = [NSString new];
    for (int i=0; i<keyArray.count; i++) {
        NSString *key = keyArray[i];
        NSString *propertyStr = [NSString stringWithFormat:@"\n\n- (NSString*)%@{\n  if(_%@.length == 0) {\n    return @\"\";\n  }\n  return _%@;\n}",key,key,key];
        printStr = [NSString stringWithFormat:@"%@%@",printStr,propertyStr];
    }
    NSLog(@"%@",printStr);
}
@end
