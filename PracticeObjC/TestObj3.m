//
//  TestObj3.m
//  PracticeObjC
//
//  Created by Naver - Minho on 2017. 9. 2..
//  Copyright © 2017년 Naver - Minho. All rights reserved.
//

#import "TestObj3.h"
#import "MuteVolume.h"
#import "MuteVolume+Util.h"
#import "MuteVolume+Util2.h"

@implementation TestObj3

- (instancetype)init
{
	self = [super init];
	
	if (self) {
		MuteVolume *muteObj = [[MuteVolume alloc] init];
		
		[muteObj realMute];
		[muteObj controlVolume:2.0f];
	}
	
	return self;
}

@end
