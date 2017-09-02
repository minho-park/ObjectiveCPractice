//
//  MuteVolume+Util.m
//  PracticeObjC
//
//  Created by Naver - Minho on 2017. 9. 2..
//  Copyright © 2017년 Naver - Minho. All rights reserved.
//

#import "MuteVolume+Util.h"

@implementation MuteVolume (Util)

- (void)controlVolume:(CGFloat)value
{
	if (self.deleted) {
		NSLog(@"wow! deleted! %lf", value);
	} else {
		NSLog(@"NO... exist... %lf", value);
	}
}

@end
