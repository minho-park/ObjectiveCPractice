//
//  TestObj.m
//  PracticeObjC
//
//  Created by Naver - Minho on 2017. 9. 2..
//  Copyright © 2017년 Naver - Minho. All rights reserved.
//

#import "TestObj.h"
#import "MuteVolume.h"
#import "MuteVolume+Util2.h"

@implementation TestObj

- (instancetype)init
{
	self = [super init];
	
	if (self) {
		MuteVolume *muteObj = [[MuteVolume alloc] init];
		
		[muteObj realMute];
	}
	
	return self;
}

- (void)requiredLogTest
{
	NSLog(@"this is requiredLogTest");
}

@end
