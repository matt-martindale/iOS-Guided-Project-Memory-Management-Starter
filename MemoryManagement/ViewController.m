//
//  ViewController.m
//  MemoryManagement
//
//  Created by Paul Solt on 1/29/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "ViewController.h"
#import "Car.h"
#import "Person.h"
#import "LSILog.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    NSMutableArray *array = [[NSMutableArray alloc] init];
    
    for (NSInteger index = 0; index < 10; index += 1) {
        NSMutableString *string = [[NSMutableString alloc] initWithString:@"Starting Value"];
        
        [array addObject:string];
        
        [string release];
    }
    
    NSMutableString *firstSring = [array objectAtIndex:0];
    [firstSring retain];
    NSLog(@"The string is: %@", firstSring);
    
    [array release];
    
    NSLog(@"The string is still: %@", firstSring);
    
    [firstSring release];
    
    Person *me = [[Person alloc] init];
    
    Car *honda = [[Car alloc] initWithMake:@"Civic SI"];
    
    me.car = honda;
    
    [honda release];
    
    NSLog(@"The person is: %@", me);
    
    [honda retain];
    
    Car *toyota = [[Car alloc] initWithMake:@"Camry"];
    
    me.car = toyota;
    [toyota release];
    
    NSLog(@"The car is: %@", honda);
    [honda release];
    [me release];
    
    
    
    
    
    
}


@end
