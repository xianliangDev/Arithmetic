//
//  SelectionSort.m
//  Arithmetic
//
//  Created by xlCoder on 2018/10/9.
//  Copyright © 2018年 xianliangDev. All rights reserved.
//

#import "SelectionSort.h"

@implementation SelectionSort
void select_sort(char *chars){
    int i = 0;
    int j = 0;
    int min = 0;
    for (i = 0; i< strlen(chars) - 1; i++) {
        min = i;
        for (j = i+1; j < strlen(chars); j++) {
            if (chars[min] < chars[j]) {
                min= j;
            }
        }
        if (min!= i) {
            char tempChar = chars[min];
            chars[min] = chars[i];
            chars[i] =tempChar;
            
        }
    }
}
@end
