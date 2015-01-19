//
//  RDPlace.h
//  Ready
//
//  Created by Lee on 1/17/15.
//  Copyright (c) 2015 LetUsRock. All rights reserved.
//

#import <Realm/Realm.h>

@class RDCoordinate;

@interface RDPlace : RLMObject

@property NSString *name;
@property RDCoordinate *coordinate;

@end

// This protocol enables typed collections. i.e.:
// RLMArray<RDPlace>
RLM_ARRAY_TYPE(RDPlace)
