//
//  ViewController.h
//  HealthKit
//
//  Created by Stephen Printup on 1/22/16.
//  Copyright © 2016 Stephen Printup. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <HealthKit/HealthKit.h>
@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *textFieldHeight;
@property (weak, nonatomic) IBOutlet UITextField *textFieldWeight;

@property (nonatomic)HKHealthStore *healthStore;

@end

