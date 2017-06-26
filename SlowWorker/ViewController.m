//
//  ViewController.m
//  SlowWorker
//
//  Created by Vasilii on 26.06.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "ViewController.h"

//@interface ViewController ()

//@end

@implementation ViewController

- (NSString *) fetchSomethingFromServer {
    [NSThread sleepForTimeInterval:1];
    return @"Hi there";
}

- (NSString *)processData:(NSString *)data {
    [NSThread sleepForTimeInterval:2];
    return [data uppercaseString];
}

- (NSString *)calculateFirstResult:(NSString *)data {
    [NSThread sleepForTimeInterval:3];
    return [NSString stringWithFormat:@"Number of chars: %d",
            [data length]];
}

- (NSString *)calculateSecondResult:(NSString *)data {
    [NSThread sleepForTimeInterval:4];
    return [data stringByReplacingOccurrencesOfString:@"E" withString:@"e"];
}

- (IBAction)doWork:(id)sender {
    NSDate *startTime = [NSDate date];
    NSString *fetchedData = [self fetchSomethingFromServer];
    NSString *processedData = [self processData:fetchedData];
    NSString *firstResult = [self calculateFirstResult:processedData];
    NSString *secondResult = [self calculateSecondResult:processedData];
    
    NSString *resultsSummary = [NSString stringWithFormat:@"First: [%@]\nSecond: [%@]", firstResult,secondResult];
    self.resultsTextView.text = resultsSummary;
    NSDate *endTime = [NSDate date]; NSLog(@"Completed in %f seconds",
                                            [endTime timeIntervalSinceDate:startTime]);
                                           }
                                          


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
