//
//  MKCLViewController.m
//  D11Location
//
//  Created by Jason Koceja on 9/23/13.
//  Copyright (c) 2013 Jason Koceja. All rights reserved.
//

#import "MKCLViewController.h"
#import <CoreLocation/CoreLocation.h>
#import "MKCLAnnotation.h" // annotation for item
#import "MKCLAnnotationView.h"
#import "MKCLMapItem.h"

@interface MKCLViewController ()

@end

@implementation MKCLViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // create an array of annotations
    _annotations = [[NSMutableArray alloc] initWithCapacity:1];
    
    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(47.679582, -122.387661);
    
    
    MKCLAnnotation *anno = [[MKCLAnnotation alloc] initWithCoordinates:coordinate placeName:@"Ballard Food Bank" description:@"something here"];
    
    [_annotations insertObject:anno atIndex:0];
    
    NSLog(@"Object name in array: %@", _annotations[0]);
    
    [self gotoLocation];
}

- (void)viewWillAppear:(BOOL)animated{
    //    CLLocationCoordinate2D coord = CLLocationCoordinate2DMake(47.67958, -122.387661);
    //    MKCLAnnotation *pin = [[MKCLAnnotation alloc] initWithCoordinates:coord placeName:@"Title" description:@"Subtitle"];
    
}

- (void)gotoLocation{
    MKCoordinateRegion region;
    region.center.latitude = 47.623543;
    region.center.longitude = -122.335812;
    region.span.latitudeDelta = 0.112872;
    region.span.longitudeDelta = 0.109863;
    
    [_mapView setRegion:region animated:YES];
}

#pragma mark - Button actions

- (void)gotoAnnotationIndex:(int)index{
    
    // load starting location
    [self gotoLocation];
    
    // clear the map of all other annotations
    [_mapView removeAnnotations:_mapView.annotations];
    
    // create new annotation with anno at index of array
    [_mapView addAnnotation:[_annotations objectAtIndex:index]];
}

- (IBAction)locationAction:(id)sender{
    
    // only one item in array, go there
    [self gotoAnnotationIndex:0];
}

@end











