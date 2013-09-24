//
//  MKCLMapItem.m
//  D11Location
//
//  Created by Jason Koceja on 9/23/13.
//  Copyright (c) 2013 Jason Koceja. All rights reserved.
//

#import "MKCLMapItem.h"

@implementation MKCLMapItem

- (CLLocationCoordinate2D)coordinate{
    coordinate.latitude = [self.latitude doubleValue];
    coordinate.longitude = [self.longitude doubleValue];
    return coordinate;
}

@end
