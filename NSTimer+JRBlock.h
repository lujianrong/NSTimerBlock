//
//  NSTimer+JRBlock.h
//  JRKit
//
//  Created by lujianrong on 16/5/25.
//  Copyright © 2016年 lujianrong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimer (JRBlock)
+ (NSTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)seconds block:(void (^)(NSTimer *timer))block repeats:(BOOL)repeats;

+ (NSTimer *)timerWithTimeInterval:(NSTimeInterval)seconds block:(void (^)(NSTimer *timer))block repeats:(BOOL)repeats;
@end
