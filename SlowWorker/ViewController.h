//
//  ViewController.h
//  SlowWorker
//
//  Created by Vasilii on 26.06.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property(nonatomic, weak) IBOutlet UIButton *startButton;
@property(nonatomic, weak) IBOutlet UITextView *resultsTextView;
@property(nonatomic, weak) IBOutlet UIActivityIndicatorView *spinner;

-(IBAction)doWork:(id)sender;

@end

