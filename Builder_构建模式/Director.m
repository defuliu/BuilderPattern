//
//  Director.m
//  Builder_构建模式
//
//  Created by 刘德福 on 2018/4/23.
//  Copyright © 2018年 ZGW. All rights reserved.
//

#import "Director.h"


@interface Director ()

@property (nonatomic, strong) id <TeaBuilder> Tmilk;

@end

@implementation Director

- (instancetype)initWithDirector:(id <TeaBuilder>)builder
{
    self = [super init];
    if (self) {
        self.Tmilk = builder;
    }
    return self;
}

- (void)contractWithDirector:(NSString *)suger milk:(NSString *)milk peal:(NSString *)peal natadecoco:(NSString *)natadecoco
{
    [[[[[self.Tmilk buildSugar:suger] buildMilk:milk] buildPearl:peal] buildNatadecoco:natadecoco] drink];
}

@end
