//
//  Assigment1ViewController.h
//  Assigment1
//
//  Created by iit cct2 on 9/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Assigment1ViewController : UIViewController <UIActionSheetDelegate> {
	
	IBOutlet UILabel *questionControl;
	IBOutlet UILabel *endStatement;
	IBOutlet UISegmentedControl *segControl;
	IBOutlet UILabel *hintControl;
	IBOutlet UITextField *answerControl;
    IBOutlet UILabel *superHintControl;
	NSString  *response;
	IBOutlet UIButton *startButton;
	IBOutlet UIButton *nextButton;	
	IBOutlet UILabel *wrongorright;
	IBOutlet UILabel *questionLabel;
	IBOutlet UIButton *checkButton;
	IBOutlet UIImageView *myImage;
	IBOutlet UIImage *imgQ1;
	IBOutlet UIImage *imgQ2; 
	IBOutlet UIImage *imgQ3; 
	IBOutlet UIImage *imgQ4; 
	IBOutlet UIImage *imgQ5;
	IBOutlet UIImage *imgQ6;
	IBOutlet UIImage *imgF;
	IBOutlet UIButton *Q1;
	IBOutlet UIButton *Q2;
	IBOutlet UIButton *Q3;
	IBOutlet UIButton *Q4;
	IBOutlet UIButton *Q5;
	IBOutlet UIButton *Q6;
	BOOL *BQ1;
	BOOL *BQ2;
	BOOL *BQ3;
	BOOL *BQ4;
	BOOL *BQ5;
	BOOL *BQ6;
    BOOL *IC1;
    BOOL *IC2;
    BOOL *IC3;
    BOOL *IC4;
    BOOL *IC5;
    BOOL *IC6;
	NSInteger count;
    NSInteger countIC;
	NSInteger Q1value;
	NSInteger Q2value;
	NSInteger Q3value;
	NSInteger Q4value;
	NSInteger Q5value;
	NSInteger Q6value;
	
}
@property (readwrite,assign) IBOutlet NSInteger count;
@property (readwrite,assign) IBOutlet NSInteger countIC;
@property (readwrite,assign) BOOL *BQ1;
@property (readwrite,assign) BOOL *BQ2;
@property (readwrite,assign) BOOL *BQ3;
@property (readwrite,assign) BOOL *BQ4;
@property (readwrite,assign) BOOL *BQ5;
@property (readwrite,assign) BOOL *BQ6;
@property (readwrite,assign) BOOL *IC1;
@property (readwrite,assign) BOOL *IC2;
@property (readwrite,assign) BOOL *IC3;
@property (readwrite,assign) BOOL *IC4;
@property (readwrite,assign) BOOL *IC5;
@property (readwrite,assign) BOOL *IC6;
@property (retain,nonatomic) IBOutlet UIButton *Q1;
@property (retain,nonatomic) IBOutlet UIButton *Q2;
@property (retain,nonatomic) IBOutlet UIButton *Q3;
@property (retain,nonatomic) IBOutlet UIButton *Q4;
@property (retain,nonatomic) IBOutlet UIButton *Q5;
@property (retain,nonatomic) IBOutlet UIButton *Q6;
@property (retain,nonatomic) IBOutlet UIImage *imgQ1;
@property (retain,nonatomic) IBOutlet UIImage *imgQ2;
@property (retain,nonatomic) IBOutlet UIImage *imgQ3;
@property (retain,nonatomic) IBOutlet UIImage *imgQ4;						
@property (retain,nonatomic) IBOutlet UIImage *imgQ5;
@property (retain,nonatomic) IBOutlet UIImage *imgQ6;
@property (retain,nonatomic) IBOutlet UIImage *imgF;
@property (retain,nonatomic) IBOutlet UIImageView *myImage;
@property (retain,nonatomic) IBOutlet UIButton *checkButton;
@property (retain,nonatomic) IBOutlet UILabel *questionControl;
@property (retain,nonatomic) IBOutlet UILabel *endStatement;
@property (retain,nonatomic) IBOutlet UILabel *questionLabel;
@property (retain,nonatomic) IBOutlet UISegmentedControl *segControl;
@property (retain,nonatomic) IBOutlet UILabel *hintControl;
@property (retain,nonatomic) IBOutlet UILabel *superHintControl;
@property (assign,nonatomic) IBOutlet UITextField *answerControl;
@property (readwrite,nonatomic) IBOutlet UIButton *startButton;
@property (retain,nonatomic) IBOutlet UIButton *nextButton;
@property (retain,nonatomic) IBOutlet UILabel *wrongorright;
@property(nonatomic, copy) IBOutlet NSString *response;

-(IBAction) DisplayHint: (id) sender;
-(IBAction) NextQuestion: (id) sender;
-(IBAction) CheckAnswer: (id) sender;
-(IBAction) Question1: (id) sender;
-(IBAction) Question2: (id) sender;
-(IBAction) Question3: (id) sender;
-(IBAction) Question4: (id) sender;
-(IBAction) Question5: (id) sender;
-(IBAction) Question6: (id) sender;
-(IBAction) Start: (id) sender;
-(IBAction) textFieldReturn:(id)sender;
-(IBAction) backgroundTouched:(id)sender;
-(IBAction) Finish: (id) sender;
@end

