//
//  NSObject+HModel.h
//  json
//
//  Created by huzhaohao on 2019/8/8.
//  Copyright © 2019 huzhaohao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (HModel)

+ (void)logKeyProperty:(NSArray *)keyArray;
+ (void)logKeyCopyProperty:(NSArray *)keyArray;

+ (void)logKeyPropertyGet:(NSArray *)keyArray;
@end
