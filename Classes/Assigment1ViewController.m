//
//  Assigment1ViewController.m
//  Assigment1
//
//  Created by iit cct2 on 9/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Assigment1ViewController.h"

@implementation Assigment1ViewController
@synthesize segControl;
@synthesize	wrongorright;
@synthesize questionLabel;
@synthesize	answerControl;
@synthesize hintControl;
@synthesize superHintControl;
@synthesize questionControl;
@synthesize startButton;
@synthesize nextButton;
@synthesize checkButton;
@synthesize response;
@synthesize BQ1;
@synthesize BQ2;
@synthesize BQ3;
@synthesize BQ4;
@synthesize BQ5;
@synthesize BQ6;
@synthesize countIC;
@synthesize IC1;
@synthesize IC2;
@synthesize IC3;
@synthesize IC4;
@synthesize IC5;
@synthesize IC6;
@synthesize count;


/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


-(IBAction) NextQuestion: (id) sender {
	if (wrongorright.text==@"Correct!") {
		segControl.selectedSegmentIndex=0;
		answerControl.text=@"";

		if (questionLabel.text==@"Question 1") {
			Q2.hidden=NO;
			[self Question2: (id) sender];
		}else {
		if (questionLabel.text==@"Question 2") {
			Q3.hidden=NO;
			[self Question3: (id) sender];
		}else {
		if (questionLabel.text==@"Question 3") {
			Q4.hidden=NO;
			[self Question4: (id) sender];
		}else {
		if (questionLabel.text==@"Question 4") {
			Q5.hidden=NO;
			[self Question5: (id) sender];
		}else{
		if (questionLabel.text==@"Question 5") {
			Q6.hidden=NO;
			[self Question6: (id) sender];
		}else {
		if (questionLabel.text==@"Question 6") {
				[self Finish: (id) sender];
		}else {
			if (questionLabel.text==@"Finished!") {
				Q1.hidden=NO;
				[self Question1: (id) sender];
		}
		}}}}}}}
		else {
			if (questionLabel.text==@"Question 6") {
				[self Finish: (id) sender];
			}
		}

}

-(IBAction)textFieldReturn:(id)sender
{
	[sender resignFirstResponder];
}

-(IBAction)backgroundTouched:(id)sender
{
	[answerControl resignFirstResponder];
}

-(IBAction) Question1: (id) sender {
	segControl.selectedSegmentIndex=0;
	answerControl.text=@"";
	[myImage setImage:imgQ1]; 
	questionLabel.text=@"Question 1";
	questionControl.text=@"Witch is the longest river in the world?";
	wrongorright.text=@"";
	hintControl.text = @"?????";  
	hintControl.textColor=[UIColor brownColor];	
}

-(IBAction) Question2: (id) sender{
	segControl.selectedSegmentIndex=0;
	answerControl.text=@"";
	[myImage setImage:imgQ2]; 
	questionLabel.text=@"Question 2";
	questionControl.text=@"Witch is the highest mountain in the world?";
	wrongorright.text=@"";
	hintControl.text = @"?????";  
	hintControl.textColor=[UIColor brownColor];	
}

-(IBAction) Question3: (id) sender{
	segControl.selectedSegmentIndex=0;
	answerControl.text=@"";
	[myImage setImage:imgQ3]; 
	questionLabel.text=@"Question 3";
	questionControl.text=@"Whitch is the president of the United States of America";
	wrongorright.text=@"";
	hintControl.text = @"?????";  
	hintControl.textColor=[UIColor brownColor];	
}
-(IBAction) Question4: (id) sender{
	segControl.selectedSegmentIndex=0;
	answerControl.text=@"";
	[myImage setImage:imgQ4]; 
	questionLabel.text=@"Question 4";
	questionControl.text=@"Can you prove that God doesn’t exist?";
	wrongorright.text=@"";
	hintControl.text = @"?????";  
	hintControl.textColor=[UIColor brownColor];	
}
-(IBAction) Question5: (id) sender{
	segControl.selectedSegmentIndex=0;
	answerControl.text=@"";
	[myImage setImage:imgQ5]; 
	questionLabel.text=@"Question 5";
	questionControl.text=@"It is greater than God and more evil than the devil. The poor have it, the rich need it and if you eat it you'll die. What is it?";
	wrongorright.text=@"";
	hintControl.text = @"?????";  
	hintControl.textColor=[UIColor brownColor];	
}
-(IBAction) Question6: (id) sender{
	segControl.selectedSegmentIndex=0;
	answerControl.text=@"";
	[myImage setImage:imgQ6]; 
	questionLabel.text=@"Question 6";
	questionControl.text=@"The more you have of it, the less you see. What is it?";
	wrongorright.text=@"";
	hintControl.text = @"?????";
	hintControl.textColor=[UIColor brownColor];	
}

-(IBAction) Finish: (id) sender{
	[myImage setImage:imgF]; 
	questionLabel.text=@"Finished!";
    countIC = 0;
	count=0;
	if (BQ1) {
		count=count +1;
	}
	if (BQ2) {
		count=count +1;
	}
	if (BQ3) {
		count=count +1;
	}
	if (BQ4) {
		count=count +1;
	}
	if (BQ5) {
		count=count +1;
	}
	if (BQ6) {
		count=count +1;
	}
	if (count==6) {
		questionControl.text=@"Congratulations!You finished the Quiz! with all the answers CORRECT!";
	}
    
    //The way the code and the quiz is setup right now you will never use count==5, 4 and <4 scenario, because in order to complete the quiz one has to get all question correct and if all question are correct then all the booleans will be true. Hence their sum will always be 6. You can safely remove the bottom three if statements because they will never occur. I've added additional code and statements to compensate for that.
	if (count==5) {
		questionControl.text=@"Congratulations!You finished the Quiz!But only 5 of the answers CORRECT!";
	}
	if (count==4) {
		questionControl.text=@"You finished but only 4 answers CORRECT...keep trying";
	}
	if (count<4) {
		questionControl.text=@"Are you a DUMMIE??...keep trying!";
	}
	checkButton.hidden=YES;
	hintControl.hidden=YES;
	segControl.hidden=YES;
	answerControl.hidden=YES;
	nextButton.hidden=YES;
	wrongorright.text=@"You can Start again!";
	startButton.hidden=NO;
	hintControl.textColor=[UIColor brownColor];	
    
    
    if (IC1) {
        countIC=countIC +1;
    }
    if (IC2) {
        countIC=countIC +1;
    }
    if (IC3) {
        countIC=countIC +1;
    }
    if (IC4) {
        countIC=countIC +1;
    }
    if (IC5) {
        countIC=countIC +1;
    }
    if (IC6) {
        countIC=countIC +1;
    }
    
    endStatement.hidden=NO;
    endStatement.text =[NSString stringWithFormat:@"You answered %d questions incorrectly before getting them right", countIC];
    
}

-(IBAction) Start: (id) sender{
			endStatement.hidden=YES;
			Q1.hidden=NO;
			Q2.hidden=NO;
			Q3.hidden=NO;
			Q4.hidden=NO;
			Q5.hidden=NO;
			Q6.hidden=NO;
			BQ1=FALSE;
			BQ2=FALSE;
			BQ3=FALSE;
			BQ4=FALSE;
			BQ5=FALSE;
			BQ6=FALSE;
			IC1=false;
			IC2=false;
			IC3=false;
			IC4=false;
			IC5=false;
			IC6=false;
			myImage.hidden=NO;
			imgQ1 = [UIImage imageNamed:@"river.jpg"];
			imgQ2 = [UIImage imageNamed:@"everest.jpg"];
			imgQ3 = [UIImage imageNamed:@"USA.gif"];
			imgQ4 = [UIImage imageNamed:@"prayer.jpg"];
			imgQ5 = [UIImage imageNamed:@"QuestionAsk.gif"];
			imgQ6 = [UIImage imageNamed:@"sunset.jpg"];
			imgF = [UIImage imageNamed:@"Congrats.png"];
			startButton.hidden=YES;
			nextButton.hidden=NO;
			questionControl.hidden=NO;
			answerControl.hidden=NO;
			questionLabel.hidden=NO;
			hintControl.hidden=NO;
			checkButton.hidden=NO;
			segControl.hidden=NO;
			answerControl.text=@"Write here your answer";
			[self Question1: (id) sender];

}

-(IBAction) DisplayHint: (id) sender
{
	switch (segControl.selectedSegmentIndex) {
		case 1:
			if (questionLabel.text==@"Question 1") {
				hintControl.textColor=[UIColor brownColor];
				hintControl.text =@"It is near Egypt!";  
			}
			if (questionLabel.text==@"Question 2") {
				hintControl.textColor=[UIColor brownColor];
				hintControl.text=@"It is in Asia!";
			}
			if (questionLabel.text==@"Question 3") {
				hintControl.textColor=[UIColor brownColor];
				hintControl.text=@"He was born in Hawaii!";
			}
			if (questionLabel.text==@"Question 4") {
				hintControl.textColor=[UIColor brownColor];
				hintControl.text=@"Think more, is so easy!";
			}
			if (questionLabel.text==@"Question 5") {
				hintControl.textColor=[UIColor brownColor];
				hintControl.text=@"Is there anything?!";
			}
			if (questionLabel.text==@"Question 6") {
				hintControl.textColor=[UIColor brownColor];
				hintControl.text=@"When you turn off the light";
			}			
			break;
		default:
			hintControl.text = @"?????";  
			hintControl.textColor=[UIColor brownColor];	
			break;
	}
			
}/*
-(void)alertView:(UIAlertView *)actionAlert clickedButtonIndex:(NSInteger) alertButtonIndex (id) sender{

if (alertButtonIndex == 0) {
}
	[self NextQuestion:(id)sender];



}
*/

-(void)actionSheet: (UIActionSheet *) actionSheet willDismissWithButtonIndex:(NSInteger)buttonIndex {
    if (buttonIndex != [actionSheet cancelButtonIndex]) {
        
        if (questionLabel.text==@"Question 1") {
                    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Super Hint" 
                                             message:@"It Starts with N"
                                             delegate:self
                                             cancelButtonTitle:@"Alright, I'm ready now!"
                                             otherButtonTitles:nil];
        [alert show];
        [alert release];        
        }
        
        
        if (questionLabel.text==@"Question 2") {
            UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Super Hint" 
                                                           message:@"The name rhimes with ____West"
                                                          delegate:self
                                                 cancelButtonTitle:@"Alright, I'm ready now!"
                                                 otherButtonTitles:nil];
            [alert show];
            [alert release];        
        }
        if (questionLabel.text==@"Question 3") {
            UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Super Hint" 
                                                           message:@"Starts with B and ends with A"
                                                          delegate:self
                                                 cancelButtonTitle:@"Alright, I'm ready now!"
                                                 otherButtonTitles:nil];
            [alert show];
            [alert release];        
        }
        if (questionLabel.text==@"Question 4") {
            UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Super Hint" 
                                                           message:@"Its either a Yes or No Question."
                                                          delegate:self
                                                 cancelButtonTitle:@"Alright, I'm ready now!"
                                                 otherButtonTitles:nil];
            [alert show];
            [alert release];        
        }
        if (questionLabel.text==@"Question 5") {
            UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Super Hint" 
                                                           message:@"You'll be hardpressed to find something like that"
                                                          delegate:self
                                                 cancelButtonTitle:@"Alright, I'm ready now!"
                                                 otherButtonTitles:nil];
            [alert show];
            [alert release];        
        }
        if (questionLabel.text==@"Question 6") {
            UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Super Hint" 
                                                           message:@"Its the opposite of brightness"
                                                          delegate:self
                                                 cancelButtonTitle:@"Alright, I'm ready now!"
                                                 otherButtonTitles:nil];
            [alert show];
            [alert release];        
        }
    }
}


-(IBAction) CheckAnswer: (id) sender{
	if (questionLabel.text==@"Question 1"){
		NSString *response = @"Nile";
		BOOL *result = [response caseInsensitiveCompare:answerControl.text] == NSOrderedSame;
		if (result) {
			wrongorright.hidden=NO;
			BQ1=TRUE;
			wrongorright.text=@"Correct!";
			wrongorright.textColor= [UIColor blueColor];
			UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Your answer is...CORRECT" 
														   message:@"Press Next Button for the next question"
														  delegate:self
												 cancelButtonTitle:@"Ok!Thanks!"
												 otherButtonTitles:@"Next!",nil];
			[alert show];
			[alert release];
			[self NextQuestion:(id)sender];
		}
		else  {
            IC1=TRUE;
            UIActionSheet *actionSheet=[[UIActionSheet alloc]initWithTitle:@"A hint"delegate:self cancelButtonTitle:@"I know what I'm doing" destructiveButtonTitle:@"Give me additional hints" otherButtonTitles:nil];
            [actionSheet showInView:self.view];
            [actionSheet release];
			wrongorright.hidden=NO;
			wrongorright.text=@"Wrong!Try again!";
			wrongorright.textColor=[UIColor redColor];
		}
	}
	if (questionLabel.text==@"Question 2") {
		NSString *response = @"Everest";
		BOOL *result = [response caseInsensitiveCompare:answerControl.text] == NSOrderedSame;
		if (result) {
			wrongorright.hidden=NO;
			BQ2=TRUE;
			wrongorright.text=@"Correct!";
			wrongorright.textColor= [UIColor blueColor];
			UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Your answer is...CORRECT" 
														   message:@"Press Next Button for the next question"
														  delegate:self
												 cancelButtonTitle:@"Ok!Thanks!"
												 otherButtonTitles:nil];
			[alert show];
			[alert release];
		}
		else  {
            IC2=TRUE;
            UIActionSheet *actionSheet=[[UIActionSheet alloc]initWithTitle:@"A hint"delegate:self cancelButtonTitle:@"I know what I'm doing" destructiveButtonTitle:@"Give me additional hints" otherButtonTitles:nil];
            [actionSheet showInView:self.view];
            [actionSheet release];
			wrongorright.hidden=NO;
			wrongorright.text=@"Wrong!Try again!";
			wrongorright.textColor=[UIColor redColor];
		}
	}
	if (questionLabel.text==@"Question 3") {
		NSString *response = @"Barack Obama";
		BOOL *result = [response caseInsensitiveCompare:answerControl.text] == NSOrderedSame;
		if (result) {
			wrongorright.hidden=NO;
			BQ3=TRUE;
			wrongorright.text=@"Correct!";
			wrongorright.textColor= [UIColor blueColor];
			UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Your answer is...CORRECT" 
														   message:@"Press Next Button for the next question"
														  delegate:self
												 cancelButtonTitle:@"Ok!Thanks!"
												 otherButtonTitles:nil];
			[alert show];
			[alert release];
		}
		else  {
            IC3=TRUE;
            UIActionSheet *actionSheet=[[UIActionSheet alloc]initWithTitle:@"A hint"delegate:self cancelButtonTitle:@"I know what I'm doing" destructiveButtonTitle:@"Give me additional hints" otherButtonTitles:nil];
            [actionSheet showInView:self.view];
            [actionSheet release];
			wrongorright.hidden=NO;
			wrongorright.text=@"Wrong!Try again!";
			wrongorright.textColor=[UIColor redColor];
		}
	}
	if (questionLabel.text==@"Question 4") {
		NSString *response = @"No";
		BOOL *result = [response caseInsensitiveCompare:answerControl.text] == NSOrderedSame;
		if (result) {
			wrongorright.hidden=NO;
			BQ4=TRUE;
			wrongorright.text=@"Correct!";
			wrongorright.textColor= [UIColor blueColor];
			UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Your answer is...CORRECT" 
														   message:@"Press Next Button for the next question"
														  delegate:self
												 cancelButtonTitle:@"Ok!Thanks!"
												 otherButtonTitles:nil];
			[alert show];
			[alert release];
		}
		else  {
            IC4=TRUE;
            UIActionSheet *actionSheet=[[UIActionSheet alloc]initWithTitle:@"A hint"delegate:self cancelButtonTitle:@"I know what I'm doing" destructiveButtonTitle:@"Give me additional hints" otherButtonTitles:nil];
            [actionSheet showInView:self.view];
            [actionSheet release];
			wrongorright.hidden=NO;
			wrongorright.text=@"Wrong!Try again!";
			wrongorright.textColor=[UIColor redColor];
		}
	}
	if (questionLabel.text==@"Question 5") {
		NSString *response = @"Nothing";
		BOOL *result = [response caseInsensitiveCompare:answerControl.text] == NSOrderedSame;
		if (result) {
			wrongorright.hidden=NO;
			BQ5=TRUE;
			wrongorright.text=@"Correct!";
			wrongorright.textColor= [UIColor blueColor];
			UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Your answer is...CORRECT" 
														   message:@"Press Next Button for the next question"
														  delegate:self
												 cancelButtonTitle:@"Ok!Thanks!"
												 otherButtonTitles:nil];
			[alert show];
			[alert release];
		}
		else  {
            IC5=TRUE;
            UIActionSheet *actionSheet=[[UIActionSheet alloc]initWithTitle:@"A hint"delegate:self cancelButtonTitle:@"I know what I'm doing" destructiveButtonTitle:@"Give me additional hints" otherButtonTitles:nil];
            [actionSheet showInView:self.view];
            [actionSheet release];

			wrongorright.hidden=NO;
			wrongorright.text=@"Wrong!Try again!";
			wrongorright.textColor=[UIColor redColor];
		}
	}
	if (questionLabel.text==@"Question 6") {
		NSString *response = @"Darkness";
		BOOL *result = [response caseInsensitiveCompare:answerControl.text] == NSOrderedSame;
		if (result) {
			wrongorright.hidden=NO;
			BQ6=TRUE;
			wrongorright.text=@"Correct!";
			wrongorright.textColor= [UIColor blueColor];
			UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Your answer is...CORRECT" 
														   message:@"Press Next Button for the next question"
														  delegate:self
												 cancelButtonTitle:@"Ok!Thanks!"
												 otherButtonTitles:nil];
			[alert show];
			[alert release];		}
		else  {
            IC6=TRUE;
            UIActionSheet *actionSheet=[[UIActionSheet alloc]initWithTitle:@"A hint"delegate:self cancelButtonTitle:@"I know what I'm doing" destructiveButtonTitle:@"Give me additional hints" otherButtonTitles:nil];
            [actionSheet showInView:self.view];
            [actionSheet release];

			wrongorright.hidden=NO;
			wrongorright.text=@"Wrong!Try again!";
			wrongorright.textColor=[UIColor redColor];
		}
	}
}
/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
