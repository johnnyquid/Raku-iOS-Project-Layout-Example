//
//  RKUHelloViewControllerIntegrationTest.m
//  RakuLayoutExample
//
//  Created by Erick Camacho Chavarría on 31/08/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "RKUHelloViewControllerIntegrationTest.h"


#import "KIFTestScenario.h"
#import "KIFTestScenario+RKUAdditions.h"

@implementation RKUHelloViewControllerIntegrationTest

- (void)initializeScenarios
{
  [self addScenario:[KIFTestScenario scenarioToGreet]];  
}


@end
