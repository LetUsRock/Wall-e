//
//  RDTraffic.h
//  Ready
//
//  Created by Lee on 1/17/15.
//  Copyright (c) 2015 LetUsRock. All rights reserved.
//

#import <Realm/Realm.h>

typedef enum : NSUInteger {
    RDTrafficTraffic = 1,
    RDTrafficAccident = 1,
    RDTrafficWeather = 0,
    RDTrafficEvent = 2,
    RDTrafficNews = 3,
    RDTrafficCongestion = 4,
} RDTrafficType;

typedef enum : NSUInteger {
    RDTrafficLevelNormal = 0,
    RDTrafficLevelSerious = 1,
} RDTrafficLevel;

@interface RDTraffic : RLMObject

@property NSString      *title;
@property RDTrafficType type;
@property RDTrafficLevel level;

@end

// This protocol enables typed collections. i.e.:
// RLMArray<RDTraffic>
RLM_ARRAY_TYPE(RDTraffic)
