//
//  BubbleSort.m
//  Arithmetic
//
//  Created by xlCoder on 2018/9/30.
//  Copyright © 2018年 xianliangDev. All rights reserved.
//

#import "BubbleSort.h"

@implementation BubbleSort
void char_bubbleSort(char *charBubbleSort){
    for (int i = 0; i< strlen(charBubbleSort) - 1; i++) {
        for (int j = 0; j< strlen(charBubbleSort) - i - 1; j++) {
            if (charBubbleSort[j] < charBubbleSort[j+1]) {
                char tempChar = charBubbleSort[j];
                charBubbleSort[j] = charBubbleSort[j+1];
                charBubbleSort[j+1] = tempChar;
            }
        }
    }
}

+ (void)bubbleSort:(NSMutableArray **)dataArray{
    NSMutableArray *dataTempArray = *dataArray;
    NSInteger arraylength = dataTempArray.count;
    for (int i = 0; i < arraylength - 1; i++) {
        for (int j = 0; j< arraylength - i - 1 ; j++) {
            NSNumber* first = dataTempArray[j];
            NSNumber* second = dataTempArray[j+1];
            if ([first integerValue] < [second integerValue]) {
                [dataTempArray replaceObjectAtIndex:j withObject:second];
                [dataTempArray replaceObjectAtIndex:j+1 withObject:first];
            }
        }
    }
}
@end
