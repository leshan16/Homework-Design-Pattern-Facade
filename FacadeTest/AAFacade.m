//
//  AAFacade.m
//  FacadeTest
//
//  Created by Алексей Апестин on 06.05.19.
//  Copyright © 2019 Алексей Апестин. All rights reserved.
//

#import "AAFacade.h"
#import "AAComplexDeliverySystem.h"


@interface AAFacade()

@property (nonatomic, strong) AAComplexDeliverySystem *complexDeliverySystem;

@end


@implementation AAFacade

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        _complexDeliverySystem = [AAComplexDeliverySystem new];
    }
    return self;
}


- (NSString *)deliverGoods:(NSString *)product adress:(NSString *)adress
{
    NSString *result = @"Фасад инициализирует подсистему доставки:";
    result = [NSString stringWithFormat:@"%@ \n%@", result, [self.complexDeliverySystem findGoodsInStock:product]];
    result = [NSString stringWithFormat:@"%@ \n%@", result, [self.complexDeliverySystem packGoods:product]];
    result = [NSString stringWithFormat:@"%@ \n%@", result, [self.complexDeliverySystem writeDocuments:product]];
    result = [NSString stringWithFormat:@"%@ \n%@", result, [self.complexDeliverySystem orderDelivered:adress]];
    
    return result;
}

@end
