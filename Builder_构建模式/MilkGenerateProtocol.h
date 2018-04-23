//
//  MilkGenerateProtocol.h
//  Builder_构建模式
//
//  Created by 刘德福 on 2018/4/23.
//  Copyright © 2018年 ZGW. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MilkGenerateProtocol <NSObject>

- (void)addSuger:(NSString *)suger;
- (void)addMilk:(NSString *)milk;
- (void)addPeal:(NSString *)peal;
- (void)addNatadecoco:(NSString *)natadecoco;
- (void)addDrink;

@end
