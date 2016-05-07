//
//  ViewController.m
//  喷枪打字
//
//  Created by 席亚坤 on 16/5/7.
//  Copyright © 2016年 席亚坤. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *messageLabel;
@property(nonatomic,strong)NSString * penQiangStr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    self.penQiangStr = @"牵一片光阴行走在流年里，看年华似水，缘聚缘散。曾经执着过的感情，慢慢的就淡了；曾经牵过手的人，走着走着就散了。流年的光阴里，温习着一场场错过；岁月的转角处，上演着悲欢离合。尘世间有太少的相濡以沫，太多的相忘于江湖。永远到底有多远？是天涯咫尺，亦或是咫尺天涯？被你牵过的手，揽不住永久，一句对不起辜负了多少我爱你。转身，你不再是我风花雪月的主角，我也不再是你心头的那颗朱砂。缘起，你在人群中；缘灭，你已在天涯。往事是一道风景，就算再美也只适合欣赏，或许，学会放开双手，心，才会自由。";
    NSThread * thread = [[NSThread alloc]initWithTarget:self selector:@selector(xxxx:) object:nil];
    [thread start];
}
-(void)xxxx:(NSThread *)thread{
    
    for (NSInteger i = 0; i < self.penQiangStr.length; i++)
    {
        [self performSelectorOnMainThread:@selector(refreshUIWithContentStr:) withObject:[self.penQiangStr substringWithRange:NSMakeRange(0, i+1)] waitUntilDone:YES];
        [NSThread sleepForTimeInterval:0.2];
    }
    [thread cancel];
}

- (void)refreshUIWithContentStr:(NSString *)contentStr
{
    self.messageLabel.text = contentStr;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
