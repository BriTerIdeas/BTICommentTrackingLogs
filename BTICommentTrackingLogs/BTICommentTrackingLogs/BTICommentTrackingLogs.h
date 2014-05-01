//
//  BTICommentTrackingLogs.h
//  BTICommentTrackingLogs
//
//  Created by Brian Slick on 4/30/14.
//  Copyright (c) 2014 BriTer Ideas LLC. All rights reserved.
//

#import <Automator/AMBundleAction.h>

@interface BTICommentTrackingLogs : AMBundleAction

- (id)runWithInput:(id)input fromAction:(AMAction *)anAction error:(NSDictionary **)errorInfo;

@end
