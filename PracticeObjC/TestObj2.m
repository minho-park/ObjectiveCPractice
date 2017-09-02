//
//  TestObj2.m
//  PracticeObjC
//
//  Created by Naver - Minho on 2017. 9. 2..
//  Copyright © 2017년 Naver - Minho. All rights reserved.
//

#import "TestObj2.h"
#import "MuteVolume.h"
#import "MuteVolume+Util.h"

@implementation TestObj2

- (instancetype)init
{
	self = [super init];
	
	if (self) {
		MuteVolume *muteObj = [[MuteVolume alloc] init];
		
		[muteObj controlVolume:1.0f];
	}
	
	return self;
}

- (void)protocolTest:(id<TestObjProtocol>)testObj
{
	[testObj requiredLogTest];
}

@end
