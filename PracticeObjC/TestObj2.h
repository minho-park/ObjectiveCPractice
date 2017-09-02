//
//  TestObj2.h
//  PracticeObjC
//
//  Created by Naver - Minho on 2017. 9. 2..
//  Copyright © 2017년 Naver - Minho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TestObjProtocol.h"

@interface TestObj2 : NSObject

- (void)protocolTest:(id<TestObjProtocol>)testObj;

@end
