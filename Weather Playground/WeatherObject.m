//
//  WeathObject.m
//  Weather Playground
//
//  Created by Spenser Arn on 10/7/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "WeatherObject.h"
#import "NetworkController.h"

@implementation WeatherObject

-(id)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        NSArray *mainArray = dictionary[@"weather"];
        NSDictionary *mainDictionary = mainArray.firstObject;
        self.weatherMain = mainDictionary[@"main"];
        self.weatherDescription = mainDictionary[@"description"];
        self.weatherTemp = dictionary[@"main"][@"temp"];
        self.locationName = dictionary[@"name"];
        self.weatherIcon = mainDictionary[@"icon"];
    }
    
    return self;
}


@end
