

//
//  SecondViewController.m
//  ActionSheetDemo
//
//  Created by chenyufeng on 15/12/23.
//  Copyright © 2015年 chenyufengweb. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {

  [super viewDidLoad];
}

#pragma mark - 弹出选择提示框
- (IBAction)buttonPressed:(id)sender {
  //初始化提示框；
  /**
   preferredStyle参数：
   UIAlertControllerStyleActionSheet,
   UIAlertControllerStyleAlert

   *  如果要实现ActionSheet的效果，这里的preferredStyle应该设置为UIAlertControllerStyleActionSheet，而不是UIAlertControllerStyleAlert；
   */
  UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:nil preferredStyle:  UIAlertControllerStyleActionSheet];
  /**
   *  style参数：
   UIAlertActionStyleDefault,
   UIAlertActionStyleCancel,
   UIAlertActionStyleDestructive（默认按钮文本是红色的）
   *
   */
  //分别按顺序放入每个按钮；
  [alert addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    //点击按钮的响应事件；
    NSLog(@"点击了确定");
  }]];
  [alert addAction:[UIAlertAction actionWithTitle:@"体育" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    //点击按钮的响应事件；
    NSLog(@"点击了体育");
  }]];
  [alert addAction:[UIAlertAction actionWithTitle:@"娱乐" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    //点击按钮的响应事件；
    NSLog(@"点击了娱乐");
  }]];
  [alert addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
    //点击按钮的响应事件；
    NSLog(@"点击了取消");
  }]];
  //弹出提示框；
  [self presentViewController:alert animated:true completion:nil];
}

#pragma mark - 返回按钮的点击
- (IBAction)backPressed:(id)sender {

  [self dismissViewControllerAnimated:true completion:nil];
}

@end
