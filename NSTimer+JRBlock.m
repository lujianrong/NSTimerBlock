//
//  NSTimer+JRBlock.m
//  JRKit
//
//  Created by lujianrong on 16/5/25.
//  Copyright © 2016年 lujianrong. All rights reserved.
//

#import "NSTimer+JRBlock.h"

@implementation NSTimer (JRBlock)
+ (void)JRTimerBlock:(NSTimer *)timer {
    if ([timer userInfo]) {
        void (^block)(NSTimer *timer) = (void (^)(NSTimer *timer))[timer userInfo];
        block(timer);
    }
}
+ (NSTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)seconds block:(void (^)(NSTimer *timer))block repeats:(BOOL)repeats {
    return [NSTimer scheduledTimerWithTimeInterval:seconds target:self selector:@selector(JRTimerBlock:) userInfo:[block copy] repeats:repeats];
}
+ (NSTimer *)timerWithTimeInterval:(NSTimeInterval)seconds block:(void (^)(NSTimer *))block repeats:(BOOL)repeats {
    return [NSTimer timerWithTimeInterval:seconds target:self selector:@selector(JRTimerBlock:) userInfo:[block copy] repeats:repeats];
}
@end
