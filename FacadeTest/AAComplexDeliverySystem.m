//
//  AAComplexDeliverySystem.m
//  FacadeTest
//
//  Created by Алексей Апестин on 06.05.19.
//  Copyright © 2019 Алексей Апестин. All rights reserved.
//

#import "AAComplexDeliverySystem.h"


@implementation AAComplexDeliverySystem

- (NSString *)findGoodsInStock:(NSString *)product
{
    return [NSString stringWithFormat:@"%@ на складе найдена", product];
}


- (NSString *)packGoods:(NSString *)product
{
    return [NSString stringWithFormat:@"%@ упакована", product];
}


- (NSString *)writeDocuments:(NSString *)product
{
    return [NSString stringWithFormat:@"Выписаны сопровождающие документы к товару %@", product];
}


//Если товар небольшой, то доставка производится силами курьера
- (NSString *)pickCar:(NSString *)product
{
    return [NSString stringWithFormat:@"Выбрана машина доставки для %@", product];
}


//Если товар небольшой, то доставка производится силами курьера
- (NSString *)loadGoods:(NSString *)product
{
    return [NSString stringWithFormat:@"%@ загружен в машину", product];
}


- (NSString *)orderDelivered:(NSString *)adress
{
    return [NSString stringWithFormat:@"Товар доставлен до пользователя по адресу %@", adress];
}

@end
