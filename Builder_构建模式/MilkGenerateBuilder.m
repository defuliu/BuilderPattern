//
//  MilkGenerateBuilder.m
//  Builder_构建模式
//
//  Created by 刘德福 on 2018/4/23.
//  Copyright © 2018年 ZGW. All rights reserved.
//

#import "MilkGenerateBuilder.h"

@implementation MilkGenerateBuilder




- (void)addSuger:(NSString *)suger
{
    NSLog(@"奶茶添加了：%@",suger);
}
- (void)addMilk:(NSString *)milk
{
    NSLog(@"奶茶添加了：%@",milk);
}
- (void)addPeal:(NSString *)peal
{
    NSLog(@"奶茶添加了：%@",peal);
}
- (void)addNatadecoco:(NSString *)natadecoco
{
    NSLog(@"奶茶添加了：%@",natadecoco);
}
- (void)addDrink
{
    NSLog(@"这是一杯超级棒的奶茶");
}


@end
