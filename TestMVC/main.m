//
//  main.m
//  TestMVC
//
//  Created by Alexander on 06.11.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        int t;
        __block int k = 10;
        NSString*(^toString)(int) = ^NSString*(int k) {
            return @"";
        };
        void(^block)(NSString *) = ^(NSString *str){
            NSLog(@"%@ %d", str.description, k);
            k++;
        };
        void(^block2)() = block;
        k = 20;
        block2([NSObject new]);
        block2(@"123");
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
