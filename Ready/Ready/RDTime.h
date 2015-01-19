//
//  RDTime.h
//  Ready
//
//  Created by Lee on 1/17/15.
//  Copyright (c) 2015 LetUsRock. All rights reserved.
//

#import <Realm/Realm.h>

@interface RDTime : RLMObject

@property NSInteger timeInterval;

@end

// This protocol enables typed collections. i.e.:
// RLMArray<RDTime>
RLM_ARRAY_TYPE(RDTime)
