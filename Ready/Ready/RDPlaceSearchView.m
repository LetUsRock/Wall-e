//
//  RDPlaceSearchView.m
//  Ready
//
//  Created by Lee on 1/18/15.
//  Copyright (c) 2015 LetUsRock. All rights reserved.
//

#import "RDPlaceSearchView.h"

@implementation RDPlaceSearchView

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        NSArray *subviewArray = [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class])
                                                              owner:self
                                                            options:nil];
        UIView *mainView = [subviewArray objectAtIndex:0];
        mainView.frame = self.bounds;
        [self addSubview:mainView];
    }
    return self;
}

@end
