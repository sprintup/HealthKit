//
//  HealthStore.h
//  HealthKit
//
//  Created by Stephen R Printup on 1/23/16.
//  Copyright © 2016 Stephen Printup. All rights reserved.
//

//#import <HealthKit/HealthKit.h>
@import HealthKit;

@interface HealthStore : HKHealthStore 

// Fetches the single most recent quantity of the specified type.
- (void)aapl_mostRecentQuantitySampleOfType:(HKQuantityType *)quantityType predicate:(NSPredicate *)predicate completion:(void (^)(HKQuantity *mostRecentQuantity, NSError *error))completion;

@end
