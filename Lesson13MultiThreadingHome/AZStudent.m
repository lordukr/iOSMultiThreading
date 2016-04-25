//
//  AZStudent.m
//  Lesson13MultiThreadingHome
//
//  Created by My mac on 03.03.16.
//  Copyright © 2016 Anatolii Zavialov. All rights reserved.
//

#import "AZStudent.h"
#import <UIKit/UIKit.h>

@implementation AZStudent

+ (dispatch_queue_t)getQueue {
    static dispatch_queue_t queue;
    static dispatch_once_t onceToken;// создается потокобезопасный токен
    dispatch_once (&onceToken, ^{// ссылка на объект и блок с инициализацией
        queue = dispatch_queue_create("com.azavialov.queue.threads", DISPATCH_QUEUE_CONCURRENT);
    });
    
    return queue;
}

- (void) guessAnswer:(NSInteger)number toRange:(NSInteger)range andBlock:(void(^)(NSString*)) myBlock {
    
    double startTime = CACurrentMediaTime();
    NSLog(@"%@ Guessing number %d started", self.name, (int)number);
    NSInteger value;
    
    while (value != number) {
        value = arc4random() % range;
    }
    // NSLog(@"%@ guessed number in %f", self.name, CACurrentMediaTime() - startTime);
    
    myBlock([NSString stringWithFormat:@"%@ guessed number in %f", self.name, CACurrentMediaTime() - startTime]);
}

@end
