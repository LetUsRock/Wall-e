//
//  RDCoordinate.h
//  Ready
//
//  Created by Lee on 1/17/15.
//  Copyright (c) 2015 LetUsRock. All rights reserved.
//

#import <Realm/Realm.h>

@interface RDCoordinate : RLMObject

@property NSNumber *x;
@property NSNumber *y;

@end

// This protocol enables typed collections. i.e.:
// RLMArray<RDCoordinate>
RLM_ARRAY_TYPE(RDCoordinate)
