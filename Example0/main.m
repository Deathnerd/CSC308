//
//  main.m
//  Example0
//
//  Created by student on 8/19/14.
//  Copyright (c) 2014 cs@eku.edu. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        
        printf("%s\n", "Have fun with your first Objective-C program!");
        
        int n1, n2;
        printf("Enter two integers: ");
        scanf("%d %d", &n1, &n2);
        
        int sum = n1 + n2;
        NSLog(@"%d + %d = %d", n1, n2, sum);
        NSLog(@"%d + %d = %x", n1, n2, sum);
        
        NSLog(@"%@", @"Thank you for using this program");
        
    }
    return 0;
}

