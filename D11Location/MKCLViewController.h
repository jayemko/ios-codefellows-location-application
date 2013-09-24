//
//  MKCLViewController.h
//  D11Location
//
//  Created by Jason Koceja on 9/23/13.
//  Copyright (c) 2013 Jason Koceja. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "MKCLAnnotation.h"

@interface MKCLViewController : UIViewController <MKMapViewDelegate>
@property (nonatomic, strong) MKCLAnnotation *startLocation;
@property (nonatomic, strong) NSMutableArray *annotations;

@end