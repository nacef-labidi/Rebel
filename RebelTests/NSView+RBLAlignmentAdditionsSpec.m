//
//  NSView+RBLAlignmentAdditionsSpec.m
//  Rebel
//
//  Created by Indragie Karunaratne on 2013-03-22.
//  Copyright (c) 2013 GitHub. All rights reserved.
//

#import <Nimble/Nimble.h>
#import <Quick/Quick.h>
#import <Rebel/Rebel.h>

QuickSpecBegin(NSViewRBLAlignmentAdditions)

describe(@"view alignment", ^{
	NSRect nonAlignedRect = NSMakeRect(10.2, 11.8, 12, 13);
	NSRect expectedRect = NSMakeRect(10, 12, 12, 13);

	__block NSView *view;

	beforeEach(^{
		 view = [[NSView alloc] initWithFrame:NSMakeRect(20, 20, 20, 20)];
	});

	it(@"should return a rect aligned to the view backing without a window", ^{
		NSRect alignedRect = [view rbl_viewBackingAlignedRect:nonAlignedRect options:NSAlignAllEdgesNearest];
		expect(@(NSEqualRects(alignedRect, expectedRect))).to(beTruthy());
	});
});

QuickSpecEnd
