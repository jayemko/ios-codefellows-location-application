//
//  MKCLViewController.m
//  D11Location
//
//  Created by Jason Koceja on 9/23/13.
//  Copyright (c) 2013 Jason Koceja. All rights reserved.
//

#import "MKCLViewController.h"
#import <CoreLocation/CoreLocation.h>

@interface MKCLViewController (){
    __weak IBOutlet MKMapView *mapView;
    __weak IBOutlet UILabel *titleLabel;
    int counter;
}

@end

@implementation MKCLViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    counter = 0;
    
    // set a starting location
    _startLocation = [[MKCLAnnotation alloc] initWithCoordinates:CLLocationCoordinate2DMake(47.623543, -122.335812) placeName:@"You Are Here" description:@"511 Boren Ave"];
    
    // create an array for annotations
    _annotations = [NSMutableArray new];
    // create some annotations to display and add them to the array - Food Banks
    MKCLAnnotation *ballardFoodBank = [[MKCLAnnotation alloc] initWithCoordinates:CLLocationCoordinate2DMake(47.679582, -122.387661) placeName:@"Ballard Food Bank" description:nil];
    MKCLAnnotation *beaconFoodBank = [[MKCLAnnotation alloc] initWithCoordinates:CLLocationCoordinate2DMake(47.546769, -122.300331) placeName:@"Beacon Avenue Food Bank" description:nil];
    MKCLAnnotation *blessedSacramentFoodBank = [[MKCLAnnotation alloc] initWithCoordinates:CLLocationCoordinate2DMake(47.665359, -122.319416) placeName:@"Blessed Sacrament Food Bank" description:nil];
    MKCLAnnotation *centerstoneFoodBank = [[MKCLAnnotation alloc] initWithCoordinates:CLLocationCoordinate2DMake(47.625456, -122.308541) placeName:@"Centerstone" description:nil];
    MKCLAnnotation *asianFoodBank = [[MKCLAnnotation alloc] initWithCoordinates:CLLocationCoordinate2DMake(47.596483, -122.322334) placeName:@"Asian Counseling and Referral Services" description:nil];
    
    // add locations to array
    [_annotations addObject:ballardFoodBank];
    [_annotations addObject:beaconFoodBank];
    [_annotations addObject:blessedSacramentFoodBank];
    [_annotations addObject:centerstoneFoodBank];
    [_annotations addObject:asianFoodBank];
    
    //    NSLog(@"Object name in array: %@", _annotations[0]);
    
    // vamos
    [self gotoLocation];
}

- (void)gotoLocation{
    
    MKCoordinateRegion region;
    // starting region is Code Fellows
    region.center.latitude = 47.623543;
    region.center.longitude = -122.335812;
    region.span.latitudeDelta = 0.02;
    region.span.longitudeDelta = 0.02;
    [mapView removeAnnotations:mapView.annotations];
    [mapView addAnnotation:_startLocation];
    titleLabel.text = _startLocation.title;
    [mapView setRegion:region animated:YES];
}

#pragma mark - Button actions

- (void)gotoAnnotationIndex:(int)index{
    
    // load starting location
    [self gotoLocation];
    
    // clear the map of all other annotations
    [mapView removeAnnotations:mapView.annotations];
    
    // create new annotation with anno at index of array
    MKCLAnnotation *tempAnno = [_annotations objectAtIndex:index];
    titleLabel.text = tempAnno.title;
    [mapView addAnnotation:tempAnno];
    [mapView setCenterCoordinate:tempAnno.coordinate animated:YES];
}

- (IBAction)locationAction:(id)sender{
    
    // if there is still more to see on the tour, go
    if (counter < [_annotations count]) {
        [self gotoAnnotationIndex:counter];
        counter++;
    }
    // otherwise startover
    else {
        counter = 0;
        [self gotoAnnotationIndex:counter];
    }
    
}

- (IBAction)userLocationAction:(id)sender{
    // return home
    titleLabel.text = @"Welcome";
    [self gotoLocation];
}

@end











