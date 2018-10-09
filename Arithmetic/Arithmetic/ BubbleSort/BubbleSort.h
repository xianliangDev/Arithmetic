//
//  BubbleSort.h
//  Arithmetic
//
//  Created by xlCoder on 2018/9/30.
//  Copyright © 2018年 xianliangDev. All rights reserved.
//

#import <Foundation/Foundation.h>

/**冒泡排序*/
@interface BubbleSort : NSObject

void char_bubbleSort(char *charBubbleSort);

+ (void)bubbleSort:(NSMutableArray **)dataArray;
@end
