//
//  OSUtils.h
//  OSUtils
//
//  Created by Inder Kumar Rathore on 31/03/14.
//  Copyright (c) 2014 Rathore. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OSUtils : NSObject

/**
 Creates a new UIColor object
 @param Hex code, e.g. 0xFF00F0
 @returns a new UIColor object
 */
+ (UIColor *)colorWithHexCode:(int)hexCode;

/**
 Checks the current ios version
 @returns YES if less than iOS 7.0, other wise NO
 */
+ (BOOL)isCurrentIOSLessThanIOS7;

#pragma mark- File Management
/**
 Determine if the file at the path exists
 @param file path
 @returns YES if exists
 */
+ (BOOL)fileAtPathExist:(NSString *)path;

/**
 Determine if the file at the url exists
 @param file path
 @returns YES if exists
 */
+ (BOOL)fileAtUrlExist:(NSURL *)fileUrl;

/**
 Delete the file at the specified path
 @param file path
 @returns YES if exists
 */
+ (BOOL)deleteFileAtPath:(NSString *)path;

/**
 Delete the file at the specified url
 @param file path
 @returns YES if exists
 */
+ (BOOL)deleteFile:(NSURL *)fileUrl;


/**
 Gets the document directory path
 @returns doc dir path
 */
+ (NSString *)getDocumentDirectoryPath;

@end
