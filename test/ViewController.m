//
//  ViewController.m
//  test
//
//  Created by yuichi ishiyama on 2016/06/07.
//  Copyright © 2016年 yuichi ishiyama. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize a;
@synthesize b1;
@synthesize b2;
@synthesize c;
@synthesize buttonArr;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    field.delegate = self;
    // テキストクリア
    [field setText:@""];
    
    if(self.a < 10){
        int val1 = self.a + 1;
        //数値を文字列に変換
        NSString * moji;
        NSString * moji2;
        moji = [ NSString stringWithFormat : @"%d", arc4random_uniform(10 + 1 - 5) + 5];
        moji2 = [ NSString stringWithFormat : @"%d", arc4random_uniform(10 + 1 - 5) + 5];
    
        id msg0 = [NSString stringWithFormat:@"第%d問",val1];
        [label3 setText:msg0];
        id msg1 = [NSString stringWithFormat:@"%@ + %@ =",moji,moji2];
        [label setText:msg1];
    
        self.b1 = moji.intValue ;
        self.b2 = moji2.intValue;
        self.c = moji.intValue + moji2.intValue;
    }
    else{
        test.alpha = 0;
        
        id msg2 = [NSString stringWithFormat:@"終了"];
        [label4 setText:msg2];
        field.enabled = NO;
        
        CGRect r0 = [UIScreen mainScreen].bounds;
        CGRect r = CGRectMake(((r0.size.width/2)-(134/2)), 185, 134, 30);
        UIButton * btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        btn.frame = r;
        id str2 = [NSString stringWithFormat:@"戻る"];
        [btn setTitle:str2 forState: UIControlStateNormal];
        [btn addTarget:self action:@selector(buttonAction2:) forControlEvents:UIControlEventTouchUpInside];
        [buttonArr addObject:btn];
        [self.view addSubview:btn];
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@dynamic label;
@dynamic label2;
@dynamic label3;
@dynamic label4;
@dynamic field;
@dynamic test;


- (IBAction)buttonAction:(id)sender {

    if(self.a < 10){
        
    self.a = self.a + 1;
    NSString * moji3;
    moji3 = [ NSString stringWithFormat : @"%d", self.a];
    id msg2 = [NSString stringWithFormat:@"%@/10",moji3];
    [label4 setText:msg2];
    
    
    int str = [field text].intValue;
    
    if (str ==  self.c){
        id msg = [NSString stringWithFormat:@"正解...第%d問: %d + %d の答え：%d",self.a,self.b1,self.b2,self.c];
        [label2 setText:msg];
        [self viewDidLoad];
    }else{
        id msg = [NSString stringWithFormat:@"不正解...第%d問: %d + %d の答え：%d",self.a,self.b1,self.b2,self.c];
        [label2 setText:msg];
        [self viewDidLoad];
    }
        
    }else{
        return;
    }
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self.view endEditing:YES];
    return NO; // 改行無効
}

- (IBAction)buttonAction2:(id)sender {
    self.a = 0;
    id msg = [NSString stringWithFormat:@""];
    [label2 setText:msg];
    
    NSString * moji3;
    moji3 = [ NSString stringWithFormat : @"%d", self.a];
    id msg2 = [NSString stringWithFormat:@"%@/10",moji3];
    [label4 setText:msg2];
    
    [self viewDidLoad];
    field.enabled = YES;
    [sender removeFromSuperview];
    test.alpha = 1;
}

@end
