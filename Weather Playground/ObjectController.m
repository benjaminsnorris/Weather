//
//  WeatherController.m
//  Weather Playground
//
//  Created by Spenser Arn on 10/7/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "ObjectController.h"

@implementation ObjectController

+ (ObjectController *)sharedInstance {
    static ObjectController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [ObjectController new];
    });
    return sharedInstance;
}

- (void)getWeatherWithName:(NSString *)name completion:(void (^)(NSArray *weather))completion {
    
    NSString *path = [NSString stringWithFormat:@"weather?q=%@", name];
    NSLog(@"name is=%@",name);
    
    [[NetworkController api] GET:path parameters:nil success:^(NSURLSessionDataTask *task, id responseObject) {
        
        NSDictionary *responseWeather = responseObject;
        
        NSMutableArray *weatherArray = [NSMutableArray new];
        
        for (NSDictionary *dictionary in responseWeather) {
            WeatherObject *weather = [[WeatherObject alloc] initWithDictionary:dictionary];
            [weatherArray addObject:weather];
        }
        
        completion(weatherArray);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        NSLog(@"ERROR: %@", error);
        completion(nil);
    }];

}

// This is like the entires controller that it should be returning the weather

@end


