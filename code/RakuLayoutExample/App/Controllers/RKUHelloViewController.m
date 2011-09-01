//
//  RKUHelloViewController.m
//  RakuLayoutExample
//
//  Created by Erick Camacho Chavarría on 31/08/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "RKUHelloViewController.h"

@interface RKUHelloViewController ()

-(void) updateGreetLabelWithMessage:(NSString *)theMessage;

@end

@implementation RKUHelloViewController

@synthesize greetLabel;
@synthesize greetField;
@synthesize greetButton;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
  [greetLabel release];
  [greetField release];
  [greetButton release];
  [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark IBActions
-(IBAction)greetAction:(id)sender {
  self.greetLabel.hidden = YES;
  if ( self.greetField.text && self.greetField.text.length ) {
    [self updateGreetLabelWithMessage:[self greetName:self.greetField.text]];
  } else {
    [self updateGreetLabelWithMessage:@"Please, enter your name."];
  }
}

#pragma mark public methods
-(NSString *)greetName:(NSString *)name {
  return [NSString stringWithFormat:@"Hello %@!", name];
}

#pragma mark private methods
-(void) updateGreetLabelWithMessage:(NSString *)theMessage {
  self.greetLabel.hidden = NO;
  self.greetLabel.accessibilityLabel = theMessage;
  self.greetLabel.text = theMessage;
  
}


@end
