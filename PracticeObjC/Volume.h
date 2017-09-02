//
//  Volume.h
//  PracticeiOS
//
//  Created by Naver - Minho on 2015. 6. 18..
//  Copyright (c) 2015년 Naver - Minho. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Volume : NSObject
{
	int val;
	int min, max, step;
}

@property (nonatomic, getter=isDeleted, assign) BOOL deleted;

- (id)initWithMin:(int)a max:(int)b step:(int)s;
- (int)valuePrint;
- (id)up;
- (id)down;

@end
