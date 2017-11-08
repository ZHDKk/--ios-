//
//  VCRoot.m
//  导航控制器的切换
//
//  Created by zh dk on 2017/8/25.
//  Copyright © 2017年 zh dk. All rights reserved.
//

#import "VCRoot.h"
#import "VCSecond.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //设置导航栏不透明，默认为yes：透明。no：不透明
    self.navigationController.navigationBar.translucent = NO;
    self.view.backgroundColor = [UIColor blueColor];
    
    //设置导航栏的风格
    self.navigationController.navigationBar.barStyle = UIBarStyleDefault;
    
    self.title = @"跟视图";
    UIBarButtonItem *next = [[UIBarButtonItem alloc] initWithTitle:@"下一段" style:UIBarButtonItemStylePlain target:self action:@selector(pressNext)];
    self.navigationItem.rightBarButtonItem =next;
}

-(void) pressNext
{
    VCSecond *vcSecond = [[VCSecond alloc] init];
    [self.navigationController pushViewController:vcSecond animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
