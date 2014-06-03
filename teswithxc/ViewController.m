//
//  ViewController.m
//  teswithxc
//
//  Created by Roberto Casu on 03/06/14.
//  Copyright (c) 2014 Roberto Casu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    double latitude=39.898706;
    double longitude=8.592098;
    
    CLLocationCoordinate2D coord =CLLocationCoordinate2DMake(latitude, longitude);
    MKCoordinateSpan span =MKCoordinateSpanMake(.0100, .0100);
    MKCoordinateRegion region = MKCoordinateRegionMake(coord,span);
    [self.map setZoomEnabled:YES];
    [self.map setShowsUserLocation:YES];
    [self.map setMapType:MKMapTypeStandard];
    [self.map setScrollEnabled:YES];
    [self.map setRegion:region animated:YES];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
