//
//  OSUtils.m
//  OSUtils
//
//  Created by Inder Kumar Rathore on 31/03/14.
//  Copyright (c) 2014 Rathore. All rights reserved.
//

#import "OSUtils.h"

@implementation OSUtils

/**
 Creates a new UIColor object
 @param Hex code, e.g. 0xFF00F0
 @returns a new UIColor object
 */
+ (UIColor *)colorWithHexCode:(int)hexCode {
  int r = (hexCode >> 16) & 0xFF;
  int g = (hexCode >> 8) & 0xFF;
  int b = (hexCode) & 0xFF;
  return [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:1.0f];
}

/**
 Checks the current ios version
 @returns YES if less than iOS 7.0, other wise NO
 */
+ (BOOL)isCurrentIOSLessThanIOS7 {
  if (floor(NSFoundationVersionNumber) <= NSFoundationVersionNumber_iOS_6_1) {
    // iOS 6.1 or earlier
    return YES;
  } else {
    // iOS 7 or later
    return NO;
  }
}

/**
 Determine if the file at the path exists
 @param file path
 @returns YES if exists
 */
+ (BOOL)fileAtPathExist:(NSString *)path {
  return [[NSFileManager defaultManager] fileExistsAtPath:path];
}

/**
 Determine if the file at the url exists
 @param file path
 @returns YES if exists
 */
+ (BOOL)fileAtUrlExist:(NSURL *)fileUrl {
  return [self fileAtPathExist:[fileUrl path]];
}

/**
 Delete the file at the specified path
 @param file path
 @returns YES if exists
 */
+ (BOOL)deleteFileAtPath:(NSString *)path {
  NSError *error = nil;
  [[NSFileManager defaultManager] removeItemAtPath:path error:&error];
  if (error) {
    return NO;
  } else {
    return YES;
  }
}

/**
 Delete the file at the specified url
 @param file path
 @returns YES if exists
 */
+ (BOOL)deleteFile:(NSURL *)fileUrl {
  NSError *error = nil;
  [[NSFileManager defaultManager] removeItemAtURL:fileUrl error:&error];
  if (error) {
    return NO;
  } else {
    return YES;
  }
}

/**
 Gets the document directory path
 @returns doc dir path
 */
+ (NSString *)getDocumentDirectoryPath {
  NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
  return [paths objectAtIndex:0];
}

@end
