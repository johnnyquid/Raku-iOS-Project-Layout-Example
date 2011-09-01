//
//  RKUHelloViewController.h
//  RakuLayoutExample
//
//  Created by Erick Camacho Chavarría on 31/08/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//



@interface RKUHelloViewController : UIViewController

@property (nonatomic, retain) IBOutlet UILabel *greetLabel;

@property (nonatomic, retain) IBOutlet UIButton *greetButton;

@property (nonatomic, retain) IBOutlet UITextField *greetField;

-(IBAction)greetAction:(id)sender;

-(NSString *)greetName:(NSString *)name;


@end
