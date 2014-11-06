//
//  TestClass.h
//  TestMVC
//
//  Created by Alexander on 06.11.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NSString*(^MyBlock)(int t);

@interface TestClass : NSObject

@property (nonatomic, copy) void(^someBlock)(int count);
@property (nonatomic, assign) NSString *str;// strong copy weak
@property (nonatomic, copy) MyBlock k;

- (void)dddd:(MyBlock(^)(int t))ttt;

@end
