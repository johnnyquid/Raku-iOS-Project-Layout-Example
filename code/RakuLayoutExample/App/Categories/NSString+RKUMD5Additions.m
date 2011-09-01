//
//  NSString+RKUMD5Additions.m
//  RakuLayoutExample
//
//  Created by Erick Camacho Chavarría on 01/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "NSString+RKUMD5Additions.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (NSString_RKUMD5Additions)

- (NSString*)MD5 
{
  const char *ptr = [self UTF8String];
  
  // Create byte array of unsigned chars
  unsigned char md5Buffer[CC_MD5_DIGEST_LENGTH];
  
  // Create 16 byte MD5 hash value, store in buffer
  CC_MD5(ptr, strlen(ptr), md5Buffer);
  
  // Convert MD5 value in the buffer to NSString of hex values
  NSMutableString *output = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
  for(int i = 0; i < CC_MD5_DIGEST_LENGTH; i++) 
    [output appendFormat:@"%02x",md5Buffer[i]];
  return output;
}

@end
