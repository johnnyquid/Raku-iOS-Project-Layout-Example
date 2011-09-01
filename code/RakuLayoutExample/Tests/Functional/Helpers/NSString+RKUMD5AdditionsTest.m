//
//  NSString+RKUMD5AdditionsTest.m
//  RakuLayoutExample
//
//  Created by Erick Camacho Chavarría on 01/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "NSString+RKUMD5AdditionsTest.h"
#import "NSString+RKUMD5Additions.h"
@implementation NSString_RKUMD5AdditionsTest

#if USE_APPLICATION_UNIT_TEST     // all code under test is in the iPhone Application

- (void)testMD5 
{
  NSString *testString = @"Hello World";
  NSString *hashMD5 = [testString MD5];
  STAssertEqualObjects( hashMD5, @"b10a8db164e0754105b7a99be72e3fe5", @"MD5 is generated correctly");        
}
#endif

@end
