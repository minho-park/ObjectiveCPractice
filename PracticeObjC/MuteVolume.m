//
//  MuteVolume.m
//  PracticeObjC
//
//  Created by Naver - Minho on 2015. 6. 18..
//  Copyright (c) 2015년 Naver - Minho. All rights reserved.
//

#import "MuteVolume.h"

@interface MuteVolume ()
{
	BOOL deleted;
}

@end

@implementation MuteVolume

- (id)mute
{
	val = min;
	
	return self;
}

- (BOOL)deleted
{
	return deleted;
}

- (void)setDeleted:(BOOL)aDeleted
{
	deleted = aDeleted;
}

- (NSString *)description
{
	return [NSString stringWithFormat:@"deleted : %@, self.deleted : %@, [self isDeleted] : %@",
			@(deleted),
			@(self.deleted),
			@([self isDeleted])];
}

@end
