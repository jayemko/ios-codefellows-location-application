//
//  MKCLAnnotation.m
//  D11Location
//
//  Created by Jason Koceja on 9/23/13.
//  Copyright (c) 2013 Jason Koceja. All rights reserved.
//

#import "MKCLAnnotation.h"

@implementation MKCLAnnotation

@synthesize coordinate;
@synthesize title;
@synthesize subtitle;

- (id)initWithCoordinates:(CLLocationCoordinate2D)location placeName:(NSString *)placeName description:(NSString *)description{
    self = [super init];
    if (self) {
        coordinate = location;
        title = placeName;
        subtitle = description;
//        
//        coordinate = CLLocationCoordinate2DMake(47.679582, -122.387661);
//        title = @"Ballard Food Bank";
//        subtitle = @"something here";
    }
    return self;
}

@end
