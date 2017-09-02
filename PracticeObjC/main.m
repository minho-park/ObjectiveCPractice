//
//  main.m
//  PracticeObjC
//
//  Created by Naver - Minho on 2015. 6. 18..
//  Copyright (c) 2015년 Naver - Minho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MuteVolume.h"
#import "MuteVolume+Util.h"
#import "TestObj.h"
#import "TestObj2.h"
#import "TestObj3.h"

int main(int argc, const char * argv[]) {
	TestObj *obj1 = [[TestObj alloc] init];
	TestObj2 *obj2 = [[TestObj2 alloc] init];
	TestObj3 *obj3 = [[TestObj3 alloc] init];
	
	[obj1 requiredLogTest];
	
	if ([obj1 respondsToSelector:@selector(optionalLogTest)]) {
		[obj1 optionalLogTest];
	}
	
	[obj2 protocolTest:obj1];
	
    return 0;
}
