//
//  TestObjProtocol.h
//  PracticeObjC
//
//  Created by Naver - Minho on 2017. 9. 2..
//  Copyright © 2017년 Naver - Minho. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TestObjProtocol <NSObject>

@property (nonatomic, strong) NSString *text;

@required
- (void)requiredLogTest;

@optional
- (void)optionalLogTest;

@end
