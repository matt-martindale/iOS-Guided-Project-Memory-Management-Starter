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
    
//    Car *toyota = [[Car alloc] initWithMake:@"Camry"];
    me.car = honda;
    
//    me.car = toyota;
//    [toyota release];
    
    NSLog(@"The car is: %@", honda);
    [honda release];
    [me release];
    
    /*
     Is the object autoreleased? Why?
    NSString *name = [NSString stringWithFormat:@"%@ %@", @"John", @"Miller"];
     -It is autoreleased
    
    NSDate *today = [NSDate date];
     -It is autoreleased
    
    NSDate *now = [NSDate new];
     -Need to release
    
    NSDate *tomorrow2 = [NSDate dateWithTimeIntervalSinceNow:60*60*24];
     -It is autoreleased
    
    NSDate *nextTomorrow = [tomorrow2 copy]; // retain: 1
     -Need to release
    
    NSArray *words = [@"This sentence is the bomb" componentsSeparatedByString:@" "];
     -It is autoreleased
    
    NSString *idea = [[NSString alloc] initWithString:@"Hello Ideas"];
     -Need to release
     
    Car *redCar = [Car car];
     -It is autoreleased
     
    NSString *idea2 = [[[NSString alloc] initWithString:@"Hello Ideas"] autorelease];
     -It is autoreleased
     
    NSString *idea3 = [[NSString alloc] initWithString:@"Hello Ideas"];
    [idea3 autorelease];
     -It is autoreleased
    */
    
    
    
}


@end
