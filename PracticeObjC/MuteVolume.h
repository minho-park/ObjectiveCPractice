//
//  MuteVolume.h
//  PracticeObjC
//
//  Created by Naver - Minho on 2015. 6. 18..
//  Copyright (c) 2015년 Naver - Minho. All rights reserved.
//

#import "Volume.h"

@interface MuteVolume : Volume

@property (nonatomic, assign) BOOL deleted;
- (id)mute;

@end