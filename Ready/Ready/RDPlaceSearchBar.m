//
//  RDTripSearchBar.m
//  Ready
//
//  Created by Lee on 1/17/15.
//  Copyright (c) 2015 LetUsRock. All rights reserved.
//

#import "RDPlaceSearchBar.h"

@implementation RDPlaceSearchBar

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self myInitialize];
    }
    return self;
}

-(void)awakeFromNib

{
    [super awakeFromNib];
    [self myInitialize];
    self.backgroundColor = [UIColor clearColor];
}

-(void)myInitialize
{
    for (UIView* subview in self.subviews) {
        if ([subview isKindOfClass:[UITextField class]]) {
            //customize text field
            subview.backgroundColor =[UIColor clearColor];
        }
    }
}

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

@end
