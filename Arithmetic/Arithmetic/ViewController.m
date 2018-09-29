//
//  ViewController.m
//  Arithmetic
//
//  Created by xlCoder on 2018/9/29.
//  Copyright © 2018年 xianliangDev. All rights reserved.
//

#import "ViewController.h"

#import "CharReverse.h"

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
    UIButton *btn =  (UIButton *)sender;
    switch (btn.tag) {
        case 1:
            [self charReverse];
            break;
            
        default:
            break;
    }
}

#pragma mark -Response
- (void)charReverse{
    NSString *origin = self.originStrlb.text;
    char chars[100];
    memcpy(chars, [origin cStringUsingEncoding:NSASCIIStringEncoding], origin.length);
    char_reverse(chars);
    self.resultStrlb.text = [NSString stringWithCString:chars encoding:CFStringConvertEncodingToNSStringEncoding(kCFStringEncodingGB_18030_2000)];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
