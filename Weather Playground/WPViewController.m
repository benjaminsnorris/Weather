//
//  WPViewController.m
//  Weather Playground
//
//  Created by Joshua Howland on 6/17/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "WPViewController.h"
#import "ObjectController.h"
#import "WeatherObject.h"


@interface WPViewController ()
@property (weak, nonatomic) IBOutlet UITextField *searchTextField;
@property (weak, nonatomic) IBOutlet UILabel *locationNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *weatherMainLabel;
@property (weak, nonatomic) IBOutlet UILabel *weatherDescriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *weatherTemperatureLabel;
@property (weak, nonatomic) IBOutlet UIImageView *weatherImage;

@end

@implementation WPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)searchButtonPressed:(UIButton *)sender {
    NSString *query = self.searchTextField.text;
    [query stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    [[ObjectController sharedInstance] getWeatherWithName:query completion:^(WeatherObject *weatherObject) {
        self.locationNameLabel.text = weatherObject.locationName;
        self.weatherMainLabel.text = weatherObject.weatherMain;
        self.weatherDescriptionLabel.text = weatherObject.weatherDescription;
        NSString *temperature = [weatherObject.weatherTemp stringValue];
        self.weatherTemperatureLabel.text = temperature;
        }];
}

@end
