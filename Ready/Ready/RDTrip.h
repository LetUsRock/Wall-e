//
//  RDTrip.h
//  Ready
//
//  Created by Lee on 1/17/15.
//  Copyright (c) 2015 LetUsRock. All rights reserved.
//

#import <Realm/Realm.h>
#import "RDTraffic.h"

@class RDPlace;
@class RDTime;
@class RDTraffic;

typedef enum : NSUInteger {
    RDTripRepeatNever = 0,
    RDTripRepeatEveryday,
    RDTripRepeatEveryweek,
    RDTripRepeatEverymonth
} RDTripRepeatType;

typedef enum : NSUInteger {
    RDTripAlarmNotification = 0,
    RDTripAlarmScream,
} RDTripAlarmType;

typedef enum : NSUInteger {
    RDTripConditionGreen = 0,
    RDTripConditionYellow = 1,
    RDTripConditionRed = 2
} RDTripCondition;

@interface RDTrip : RLMObject

@property NSString *title;
@property RDPlace  *origin;
@property RDPlace  *destination;
@property RDTime   *startTime;
@property RDTime   *endTime;
@property NSInteger bufferTime1;
@property NSInteger travelTime;
@property NSInteger bufferTime2;
@property NSInteger distance;
@property RLMArray<RDTraffic> *traffics;
@property RDTripCondition  condition;
@property RDTripRepeatType repeatType;
@property RDTripAlarmType  alarmType;

@end

// This protocol enables typed collections. i.e.:
// RLMArray<RDTrip>
RLM_ARRAY_TYPE(RDTrip)

