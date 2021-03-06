//
//  HKHealthStore+HealthKitStore_Extensions.m
//  HealthKit
//
//  Created by Stephen R Printup on 1/25/16.
//  Copyright © 2016 Stephen Printup. All rights reserved.
//

#import "HKHealthStore+HealthKitStore_Extensions.h"

@implementation HKHealthStore (HealthKitStore_Extensions)
- (void)aapl_mostRecentQuantitySampleOfType:(HKQuantityType *)quantityType predicate:(NSPredicate *)predicate completion:(void (^)(HKQuantity *, NSError *))completion {
    NSLog(@"HKHealthStore+HeathSTore_Extensions aapl_mostRecentQuantitySampleOfType inside completion block");
    NSSortDescriptor *timeSortDescriptor = [[NSSortDescriptor alloc] initWithKey:HKSampleSortIdentifierEndDate ascending:NO];
    // Since we are interested in retrieving the user's latest sample, we sort the samples in descending order, and set the limit to 1. We are not filtering the data, and so the predicate is set to nil.
    HKSampleQuery *query = [[HKSampleQuery alloc] initWithSampleType:quantityType predicate:nil limit:1 sortDescriptors:@[timeSortDescriptor] resultsHandler:^(HKSampleQuery *query, NSArray *results, NSError *error) {
        NSLog(@"inside results handler");
        if (!results) {
            if (completion) {
                completion(nil, error);
            }
            NSLog(@"no results");
            return;
        }
        
        if (completion) {
            // If quantity isn't in the database, return nil in the completion block.
            HKQuantitySample *quantitySample = results.firstObject;
            HKQuantity *quantity = quantitySample.quantity;
            NSLog(@"results");
            completion(quantity, error);
        }
    }];
    NSLog(@"outside completion block");
    [self executeQuery:query];
}
@end
