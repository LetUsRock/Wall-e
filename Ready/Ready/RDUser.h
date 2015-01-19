//
//  RDUser.h
//  Ready
//
//  Created by Lee on 1/17/15.
//  Copyright (c) 2015 LetUsRock. All rights reserved.
//

#import <Realm/Realm.h>

@interface RDUser : RLMObject

@end

// This protocol enables typed collections. i.e.:
// RLMArray<RDUser>
RLM_ARRAY_TYPE(RDUser)
