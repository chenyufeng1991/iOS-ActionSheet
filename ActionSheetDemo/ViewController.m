//
//  ViewController.m
//  ActionSheetDemo
//
//  Created by chenyufeng on 15/12/23.
//  Copyright © 2015年 chenyufengweb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIActionSheetDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {

  [super viewDidLoad];
}

#pragma mark - 按钮点击事件
- (IBAction)actionSheetButtonPressed:(id)sender {
  /**
   UIActionSheet已经在8.3后被弃用了，如果想要去掉警告信息，可以把项目的Deployment Target设置为8.3以下，就可以去掉警告了。
   */
  /**
   Title:如果不想要title，可以设置为nil；
   注意需要实现UIActionSheetDelegate；
   destructiveButtonTitle:设置的按钮文字是红色的；
   otherButtonTitles：按照按钮顺序；
   */
  UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"这是标题" delegate:self cancelButtonTitle:@"取消" destructiveButtonTitle:@"确定" otherButtonTitles:@"体育",@"娱乐", nil];
  /**
   *    
   UIActionSheetStyleAutomatic
   UIActionSheetStyleDefault
   UIActionSheetStyleBlackTranslucent
   UIActionSheetStyleBlackOpaque
  */
  //这里的actionSheetStyle也可以不设置；
  actionSheet.actionSheetStyle = UIActionSheetStyleAutomatic;
  [actionSheet showInView:self.view];
}

/**
 *  UIActionSheetDelegate中自动回调的方法；
 响应事件在里面处理；
 */
#pragma mark - UIActionSheetDelegate
- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
//按照按钮的顺序0-N；
  switch (buttonIndex) {
    case 0:
      NSLog(@"点击了确定");
      break;

    case 1:
      NSLog(@"点击了体育");
      break;

    case 2:
      NSLog(@"点击了娱乐");
      break;

    case 3:
      NSLog(@"点击了取消");
      break;
      
    default:
      break;
  }
}

@end
