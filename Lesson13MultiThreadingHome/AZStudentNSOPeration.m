//
//  AZStudentNSOPeration.m
//  Lesson13MultiThreadingHome
//
//  Created by My mac on 03.03.16.
//  Copyright © 2016 Anatolii Zavialov. All rights reserved.
//

#import "AZStudentNSOPeration.h"
#import <UIKit/UIKit.h>

@implementation AZStudentNSOPeration

- (void)guessAnswer:(NSInteger)number toRange:(NSInteger)range andBlock:(void (^)(NSString *))myBlock {
    
    
    NSBlockOperation *blockOperation = [NSBlockOperation blockOperationWithBlock:^{
        static NSInteger currentNum;
        double startTime = CACurrentMediaTime();
        NSLog(@"%@ Guessing number %d started", self.name, (int)number);
        
        while (number != currentNum) {
            currentNum = arc4random() % range;
        }
        myBlock([NSString stringWithFormat:@"%@ guessed number in %f", self.name, CACurrentMediaTime() - startTime]);
    }];
    
    NSOperationQueue* queue = [NSOperationQueue new];
    [queue addOperation:blockOperation];
}

@end
