//
//  ViewController.m
//  json
//
//  Created by huzhaohao on 2019/8/8.
//  Copyright © 2019 huzhaohao. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+HModel.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *str = [NSString stringWithFormat:@"valid_date,total_quota,hkquota_status,exchange_type_dz_cn,exchange_type,hkquota_status_dz_cn,hkmarket_status_dz_cn,surplus_quota,hkmarket_status"];
    NSArray *keyArray = [str componentsSeparatedByString:@","];
//    [NSObject logKeyCopyProperty:keyArray];
    [NSObject logKeyPropertyGet:keyArray];
//    [self logKeyProperty:keyArray];
//    [self logKeyCopyProperty:keyArray];

}
- (void)logKeyProperty:(NSArray *)keyArray{

    NSString *printStr = [NSString new];
    for (int i=0; i<keyArray.count; i++) {
        NSString *key = keyArray[i];
        NSString *propertyStr = [NSString stringWithFormat:@"\n@property (nonatomic)NSString *%@;",key];
        printStr = [NSString stringWithFormat:@"%@%@",printStr,propertyStr];
    }
    NSLog(@"%@",printStr);
}
- (void)logKeyCopyProperty:(NSArray *)keyArray{

    NSString *printStr = [NSString new];
    for (int i=0; i<keyArray.count; i++) {
        NSString *key = keyArray[i];
        NSString *propertyStr = [NSString stringWithFormat:@"\n@property (nonatomic,copy)NSString *%@;",key];
        printStr = [NSString stringWithFormat:@"%@%@",printStr,propertyStr];
    }
    NSLog(@"%@",printStr);
}
- (void)logKeyPropertyGet:(NSArray *)keyArray{
    NSString *printStr = [NSString new];
    for (int i=0; i<keyArray.count; i++) {
        NSString *key = keyArray[i];
        NSString *propertyStr = [NSString stringWithFormat:@"\n\n- (NSString*)%@{\n  if(_%@.length == 0) {\n    return @\"\";\n  }\n  return _%@;\n}",key,key,key];
        printStr = [NSString stringWithFormat:@"%@%@",printStr,propertyStr];
    }
    NSLog(@"%@",printStr);
}
//- (NSString*)entrust_date{
//    if (_entrust_date.length==0) {
//        return @"";
//    }
//    return _entrust_date;
//}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
