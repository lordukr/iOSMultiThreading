//
//  AZStudent.h
//  Lesson13MultiThreadingHome
//
//  Created by My mac on 03.03.16.
//  Copyright © 2016 Anatolii Zavialov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AZStudent : NSObject

@property (strong, nonatomic) NSString* name;

+ (dispatch_queue_t) getQueue;

- (void) guessAnswer:(NSInteger) number toRange:(NSInteger) range andBlock:(void(^)(NSString*)) myBlock;

@end
