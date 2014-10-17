//
//  WeathObject.h
//  Weather Playground
//
//  Created by Spenser Arn on 10/7/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WeatherObject : NSObject
@property (nonatomic, strong) NSString *locationName;
@property (nonatomic, strong) NSString *weatherMain;
@property (nonatomic, strong) NSString *weatherDescription;
@property (nonatomic, strong) UIImage *weatherIcon;
@property (nonatomic, assign) NSNumber *weatherTemp;

-(id)initWithDictionary:(NSDictionary *)dictionary;


@end
