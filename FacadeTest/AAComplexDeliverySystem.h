//
//  AAComplexDeliverySystem.h
//  FacadeTest
//
//  Created by Алексей Апестин on 06.05.19.
//  Copyright © 2019 Алексей Апестин. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface AAComplexDeliverySystem : NSObject

- (NSString *)findGoodsInStock:(NSString *)product;
- (NSString *)packGoods:(NSString *)product;
- (NSString *)writeDocuments:(NSString *)product;
- (NSString *)pickCar:(NSString *)product;
- (NSString *)loadGoods:(NSString *)product;
- (NSString *)orderDelivered:(NSString *)adress;

@end
