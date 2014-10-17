//
//  WeathObject.m
//  Weather Playground
//
//  Created by Spenser Arn on 10/7/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "WeatherObject.h"
#import "NetworkController.h"

static NSString * const locationNameKey = @"locationName";
static NSString * const weatherMainKey = @"weather";
static NSString * const mainKey = @"main";
static NSString * const weatherDescriptionKey = @"weatherDescription";
static NSString * const weatherTempKey = @"weatherTemp";
static NSString * const iconKey = @"icon";



@implementation WeatherObject

-(id)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        self.weatherMain = [dictionary valueForKeyPath:@"weather.main"];
//        dictionary[weatherMainKey.main];
//        self.weatherDescription = dictionary[weatherDescriptionKey];
//        self.weatherTemp = dictionary[weatherTempKey];
//        self.locationName = dictionary[locationNameKey];
//        self.weatherIcon = dictionary[iconKey];
//        NSLog(@"location name %@", self.locationName);
//         NSLog(@"location name %@", self.locationName);
    }
    
    return self;
}




@end
