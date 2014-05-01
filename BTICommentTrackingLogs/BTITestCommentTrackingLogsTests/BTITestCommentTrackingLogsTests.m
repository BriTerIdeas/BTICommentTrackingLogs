//
//  BTITestCommentTrackingLogsTests.m
//  BTITestCommentTrackingLogsTests
//
//  Created by Brian Slick on 4/30/14.
//  Copyright (c) 2014 BriTer Ideas LLC. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "BTIStringProcessor.h"

@interface BTITestCommentTrackingLogsTests : XCTestCase

@end

@implementation BTITestCommentTrackingLogsTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

#pragma mark - Test 1

- (void)testThatBTITrackingLogsAreCommented
{
    NSURL *inputURL = [[NSBundle mainBundle] URLForResource:@"test1input-commentBTIlog" withExtension:@"txt"];
    NSURL *outputURL = [[NSBundle mainBundle] URLForResource:@"test1output" withExtension:@"txt"];
    
    NSString *inputString = [[NSString alloc] initWithContentsOfURL:inputURL encoding:NSUTF8StringEncoding error:nil];
    NSString *outputStringReference = [[NSString alloc] initWithContentsOfURL:outputURL encoding:NSUTF8StringEncoding error:nil];
    
    BTIStringProcessor *processor = [[BTIStringProcessor alloc] initWithInputString:inputString];
    NSString *outputString = [processor outputString];
    
    XCTAssertEqualObjects(outputString, outputStringReference, @"Tracking logs should have been commented out");
}

#pragma mark - Test 2

- (void)testThatNSLogsAreCommented
{
    NSURL *inputURL = [[NSBundle mainBundle] URLForResource:@"test2input-commentNSLog" withExtension:@"txt"];
    NSURL *outputURL = [[NSBundle mainBundle] URLForResource:@"test2output" withExtension:@"txt"];
    
    NSString *inputString = [[NSString alloc] initWithContentsOfURL:inputURL encoding:NSUTF8StringEncoding error:nil];
    NSString *outputStringReference = [[NSString alloc] initWithContentsOfURL:outputURL encoding:NSUTF8StringEncoding error:nil];
    
    BTIStringProcessor *processor = [[BTIStringProcessor alloc] initWithInputString:inputString];
    NSString *outputString = [processor outputString];
    
    XCTAssertEqualObjects(outputString, outputStringReference, @"Tracking logs should have been commented out");
}

@end
