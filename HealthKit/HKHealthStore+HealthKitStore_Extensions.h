//
//  HKHealthStore+HealthKitStore_Extensions.h
//  HealthKit
//
//  Created by Stephen R Printup on 1/25/16.
//  Copyright © 2016 Stephen Printup. All rights reserved.
//

#import <HealthKit/HealthKit.h>

@interface HKHealthStore (HealthKitStore_Extensions)
- (void)aapl_mostRecentQuantitySampleOfType:(HKQuantityType *)quantityType predicate:(NSPredicate *)predicate completion:(void (^)(HKQuantity *mostRecentQuantity, NSError *error))completion;
@end
