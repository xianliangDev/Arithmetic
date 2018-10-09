//
//  ViewController.m
//  Arithmetic
//
//  Created by xlCoder on 2018/9/29.
//  Copyright © 2018年 xianliangDev. All rights reserved.
//

#import "ViewController.h"

#import "CharReverse.h"
#import "BubbleSort.h"
#import "SelectionSort.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSString *origin = @"tianyadevhelloworld";
    self.originStrlb.text = origin;
    
    // Do any additional setup after loading the view, typically from a nib.
}

#pragma mark UIAction
- (IBAction)btnAction:(id)sender{
    NSString *origin = self.originStrlb.text;
    char chars[100];
    memcpy(chars, [origin cStringUsingEncoding:NSASCIIStringEncoding], origin.length*2);
    UIButton *btn =  (UIButton *)sender;
    switch (btn.tag) {
        case 1:
            [self charReverse:chars];
            break;
        case 2:
            [self bubbleSort:chars];
            break;
        case 3:
            [self selectSort:chars];
            break;
        default:
            break;
    }
    NSString* resultStr = [NSString stringWithCString:chars encoding:CFStringConvertEncodingToNSStringEncoding(kCFStringEncodingGB_18030_2000)];
    self.resultStrlb.text = resultStr;
}

#pragma mark -Response
- (void)charReverse:(char* )chars{
    char_reverse(chars);
}

- (void)bubbleSort:(char* )chars{
    char_bubbleSort(chars);
    
//    NSMutableArray* dataArr = [@[@(30),@(13),@(3),@(8),@(6),@(3),@(8),@(6),@(45),@(30),@(13),@(3),@(8),@(6),@(3),@(8),@(6),@(45),@(30),@(13),@(3),@(8),@(6),@(3),@(8),@(6),@(45),] mutableCopy];
//    [BubbleSort bubbleSort:&dataArr];
//    NSLog(@"%@",dataArr);
}
- (void)selectSort:(char*)chars{
    select_sort(chars);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
