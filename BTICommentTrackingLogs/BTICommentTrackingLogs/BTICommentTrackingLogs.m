//
//  BTICommentTrackingLogs.m
//  BTICommentTrackingLogs
//
//  Created by Brian Slick on 4/30/14.
//  Copyright (c) 2014 BriTer Ideas LLC. All rights reserved.
//

#import "BTICommentTrackingLogs.h"

#import "BTIStringProcessor.h"

@implementation BTICommentTrackingLogs

- (id)runWithInput:(id)input fromAction:(AMAction *)anAction error:(NSDictionary **)errorInfo
{
	NSString *inputString = (NSString *)[input objectAtIndex:0];
	
	if (![inputString isKindOfClass:[NSString class]])
	{
		return input;
	}
	
	BTIStringProcessor *processor = [[BTIStringProcessor alloc] initWithInputString:inputString];
	
	return [processor outputString];
}

@end
