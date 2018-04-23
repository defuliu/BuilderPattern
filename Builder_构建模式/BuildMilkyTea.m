//
//  BuildMilkyTea.m
//  Builder_构建模式
//
//  Created by 刘德福 on 2018/4/23.
//  Copyright © 2018年 ZGW. All rights reserved.
//

#import "BuildMilkyTea.h"
#import "MilkGenerateBuilder.h"

@interface BuildMilkyTea ()

@property (nonatomic, strong)id <MilkGenerateProtocol> milk;
@end

@implementation BuildMilkyTea


- (instancetype)init
{
    self = [super init];
    if (self) {
        self.milk = [[MilkGenerateBuilder alloc] init];
    }
    return self;
}
/**
 构建糖
 */
- (id <TeaBuilder>)buildSugar:(NSString *)sugar
{
    [_milk addSuger:sugar];
    return self;
}
/**
 构建牛奶
 */
- (id <TeaBuilder>)buildMilk:(NSString *)milk
{
    [_milk addMilk:milk];
    return self;
    
}
/**
 构建珍珠
 */
- (id <TeaBuilder>)buildPearl:(NSString *)milk
{
    [_milk addPeal:milk];
    return self;
    
}
/**
 构建糖
 */
- (id <TeaBuilder>)buildNatadecoco:(NSString *)milk
{
    [_milk addNatadecoco:milk];
    return self;
}

/**
 构建喝
 */
- (id<MilkGenerateProtocol>)drink
{
    [_milk addDrink];
    return _milk;
}


@end
