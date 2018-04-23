//
//  TeaBuilder.h
//  Builder_构建模式
//
//  Created by 刘德福 on 2018/4/23.
//  Copyright © 2018年 ZGW. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MilkGenerateProtocol.h"

@protocol TeaBuilder <NSObject>


/**
  构建糖
 */
- (id <TeaBuilder>)buildSugar:(NSString *)sugar;
/**
 构建牛奶
 */
- (id <TeaBuilder>)buildMilk:(NSString *)milk;
/**
 构建珍珠
 */
- (id <TeaBuilder>)buildPearl:(NSString *)milk;
/**
 构建椰果
 */
- (id <TeaBuilder>)buildNatadecoco:(NSString *)milk;

/**
 构建喝
 */
- (id<MilkGenerateProtocol>)drink;

@end
