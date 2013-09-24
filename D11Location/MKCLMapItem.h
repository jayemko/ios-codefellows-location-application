//
//  MKCLMapItem.h
//  D11Location
//
//  Created by Jason Koceja on 9/23/13.
//  Copyright (c) 2013 Jason Koceja. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface MKCLMapItem : NSObject <MKAnnotation>{
    CLLocationCoordinate2D coordinate;
}

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *subtitle;
@property (nonatomic, strong) NSNumber *latitude;
@property (nonatomic, strong) NSNumber *longitude;
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

@end
