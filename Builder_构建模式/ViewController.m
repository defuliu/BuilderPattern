//
//  ViewController.m
//  Builder_构建模式
//
//  Created by 刘德福 on 2018/4/23.
//  Copyright © 2018年 ZGW. All rights reserved.
//
/**
 客户想要店主冲一杯带糖，加珍珠，加牛奶，加椰果的奶茶
 指挥者：店主
 构建者：奶茶
 生成者:糖,珍珠，牛奶，椰果

 */

#import "ViewController.h"
#import "Director.h"
#import "BuildMilkyTea.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //第一种方式
    id <TeaBuilder> builder = [[BuildMilkyTea alloc] init];
    
    //构建者
    Director *director = [[Director alloc] initWithDirector:builder];
    [director contractWithDirector:@"5分糖" milk:@"纯牛奶" peal:@"黑珍珠" natadecoco:@"台湾椰果"];
    
    
    //第二种方式
    id <TeaBuilder> builder2 = [[BuildMilkyTea alloc] init];
    //构建者
    id <MilkGenerateProtocol> milk = [[[[[builder2 buildSugar:@"7分糖"] buildMilk:@"酸牛奶"] buildPearl:@"大黑珍珠"] buildNatadecoco:@"台湾椰果11"] drink];
    NSLog(@"milk======:%@",milk);
    
    
    

}


@end
