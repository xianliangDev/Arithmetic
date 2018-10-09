//
//  CharReverse.m
//  Arithmetic
//
//  Created by xlCoder on 2018/9/29.
//  Copyright © 2018年 xianliangDev. All rights reserved.
//

#import "CharReverse.h"

@implementation CharReverse
void char_reverse(char *chars){
    //指向第一个字符
    char* begin = chars;
    
    //指向最后一个字符
    char* end = chars + strlen(chars) - 1;
    while (begin<end) {
        //进行字符间的的交换
        char temp = *begin;
        *(begin++) = *end;
        *(end--) = temp;
    }
}
@end
