//
//  ViewController.m
//  FacadeTest
//
//  Created by Алексей Апестин on 06.05.19.
//  Copyright © 2019 Алексей Апестин. All rights reserved.
//

#import "ViewController.h"
#import "AAFacade.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    AAFacade *facade = [AAFacade new];
    NSString *stagesOfImplementation = [facade deliverGoods:@"Джинсовая куртка" adress:@"Москва улица Ленина 1"];
    NSLog(@"%@", stagesOfImplementation);
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}


@end
