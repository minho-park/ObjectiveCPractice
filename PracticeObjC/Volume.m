//
//  Volume.m
//  PracticeiOS
//
//  Created by Naver - Minho on 2015. 6. 18..
//  Copyright (c) 2015년 Naver - Minho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Volume.h"

@implementation Volume

- (id)initWithMin:(int)a max:(int)b step:(int)s
{
	self = [super init];
	if(self != nil)
	{
		val = min = a;
		max = b;
		step = s;
	}
	
	return self;
}

- (BOOL)isDeleted
{
	return NO;
}
- (int)valuePrint
{
	return val;
}

- (id)up
{
	if((val += step) > max)
	{
		val = max;
	}
	
	return self;
}

- (id)down
{
	if((val -= step) < min)
	{
		val = min;
	}
	
	return self;
}

@end