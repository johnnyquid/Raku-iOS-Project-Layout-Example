//
//  RKUHelloViewControllerTest.m
//  RakuLayoutExample
//
//  Created by Erick Camacho Chavarría on 31/08/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "RKUHelloViewControllerTest.h"

@implementation RKUHelloViewControllerTest

- (void) setUp {
  [super setUp];
  helloViewController = [[RKUHelloViewController alloc] init];
  
}

- (void)tearDown {
  [super tearDown];
  [helloViewController release];
}


#if USE_APPLICATION_UNIT_TEST     

- (void)testGreetName {
  NSString *greeting = [helloViewController greetName:@"Erick"];
  STAssertEqualObjects( greeting, @"Hello Erick!", @"The Greeting is correctly generated ");        
}


#endif

@end
