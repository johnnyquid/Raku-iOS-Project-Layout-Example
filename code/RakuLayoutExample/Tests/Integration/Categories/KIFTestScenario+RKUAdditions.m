//
//  KIFTestScenario+RKUAdditions.m
//  RakuLayoutExample
//
//  Created by Erick Camacho Chavarría on 31/08/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "KIFTestScenario+RKUAdditions.h"
#import "KIFTestStep.h"

@implementation KIFTestScenario (KIFTestScenario_RKUAdditions)

+ (id)scenarioToGreet 
{
  
  KIFTestScenario *scenario = [KIFTestScenario scenarioWithDescription:@"Test that a user can succe"];
  [scenario addStep:[KIFTestStep stepToEnterText:@"Erick" intoViewWithAccessibilityLabel:@"NameTextField"]];
  [scenario addStep:[KIFTestStep stepToTapViewWithAccessibilityLabel:@"GreetButton"]];    
  [scenario addStep:[KIFTestStep stepToWaitForViewWithAccessibilityLabel:@"Hello Erick!"]];
  
  return scenario;  
}


@end
