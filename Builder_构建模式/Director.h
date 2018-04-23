//
//  Director.h
//  Builder_构建模式
//
//  Created by 刘德福 on 2018/4/23.
//  Copyright © 2018年 ZGW. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TeaBuilder.h"

@interface Director : NSObject

- (instancetype)initWithDirector:(id <TeaBuilder>)builder;

- (void)contractWithDirector:(NSString *)suger
                        milk:(NSString *)milk
                        peal:(NSString *)peal
                  natadecoco:(NSString *)natadecoco;
@end
