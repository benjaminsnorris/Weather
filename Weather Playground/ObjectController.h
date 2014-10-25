//
//  WeatherController.h
//  Weather Playground
//
//  Created by Spenser Arn on 10/7/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NetworkController.h"
#import "WeatherObject.h"

@interface ObjectController : NSObject

+ (ObjectController *)sharedInstance;
- (void)getWeatherWithName:(NSString *)name completion:(void (^)(WeatherObject * weather))completion;


@end
