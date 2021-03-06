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
@synthesize ans1;
@synthesize ans2;
@synthesize buttonArr;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    field.keyboardType = UIKeyboardTypeNumberPad;
    field.delegate = self;
    // テキストクリア
    [field setText:@""];
    
    if(self.a < 10){
        btn.alpha = 0;
        
        int val1 = self.a + 1;
        //数値を文字列に変換
        NSString * moji;
        NSString * moji2;
        //5~10までの乱数
        //moji = [ NSString stringWithFormat : @"%d", arc4random_uniform(10 + 1 - 5) + 5];
        //moji2 = [ NSString stringWithFormat : @"%d", arc4random_uniform(10 + 1 - 5) + 5];
        
        moji = [ NSString stringWithFormat : @"%d", arc4random_uniform(20 + 1 - 1) + 1];
        moji2 = [ NSString stringWithFormat : @"%d", arc4random_uniform(20 + 1 - 1) + 1];
        
        /*
         http://mzgkworks.hateblo.jp/entry/app-multilingual
         https://lab.dolice.net/blog/2014/02/14/xcode5-localize/
         https://akira-watson.com/iphone/localization.html
         */
        
        if(val1 == 1) {
            //id msg0 = [NSString stringWithFormat:@"第1問"];
            //[label3 setText:msg0];
            label3.text = NSLocalizedString(@"sampleText1", nil);
            
        }
        else if (val1 == 2) {
            //id msg0 = [NSString stringWithFormat:@"第2問"];
            //[label3 setText:msg0];
            label3.text = NSLocalizedString(@"sampleText2", nil);
       
        }
        else if (val1 == 3) {
            //id msg0 = [NSString stringWithFormat:@"第3問"];
            //[label3 setText:msg0];
            label3.text = NSLocalizedString(@"sampleText3", nil);
            
        }
        else if (val1 == 4) {
            //id msg0 = [NSString stringWithFormat:@"第4問"];
            //[label3 setText:msg0];
            label3.text = NSLocalizedString(@"sampleText4", nil);
            
        }
        else if (val1 == 5) {
            //id msg0 = [NSString stringWithFormat:@"第5問"];
            //[label3 setText:msg0];
            label3.text = NSLocalizedString(@"sampleText5", nil);
            
        }
        else if (val1 == 6) {
            //id msg0 = [NSString stringWithFormat:@"第6問"];
            //[label3 setText:msg0];
            label3.text = NSLocalizedString(@"sampleText6", nil);
            
        }
        else if (val1 == 7) {
            //id msg0 = [NSString stringWithFormat:@"第7問"];
            //[label3 setText:msg0];
            label3.text = NSLocalizedString(@"sampleText7", nil);
            
        }
        else if (val1 == 8) {
            //id msg0 = [NSString stringWithFormat:@"第8問"];
            //[label3 setText:msg0];
            label3.text = NSLocalizedString(@"sampleText8", nil);
            
        }
        else if (val1 == 9) {
            //id msg0 = [NSString stringWithFormat:@"第9問"];
            //[label3 setText:msg0];
            label3.text = NSLocalizedString(@"sampleText9", nil);
            
        }
        else if (val1 == 10) {
            //id msg0 = [NSString stringWithFormat:@"第10問"];
            //[label3 setText:msg0];
            label3.text = NSLocalizedString(@"sampleText10", nil);
            
        }
        
        id msg1 = [NSString stringWithFormat:@"%@ + %@ =",moji,moji2];
        [label setText:msg1];
    
        self.b1 = moji.intValue ;
        self.b2 = moji2.intValue;
        self.c = moji.intValue + moji2.intValue;
    }
    else{
        btn.alpha = 1;
        test.alpha = 0;
        
  
        
        NSString * result;
        NSString * result2;
        NSString * result_localize0;
        NSString * result_localize1;
        NSString * result_localize2;
        result_localize0 = NSLocalizedString(@"result_localize0", nil);
        result_localize1 = NSLocalizedString(@"result_localize1", nil);
        result_localize2 = NSLocalizedString(@"result_localize2", nil);
        //result = [ NSString stringWithFormat : @"正答数:%d", self.ans1];
        //result2 = [ NSString stringWithFormat : @"誤答数:%d", self.ans2];
        result = [ NSString stringWithFormat : @"%@:%d", result_localize0,self.ans1];
        result2 = [ NSString stringWithFormat : @"%@:%d", result_localize1,self.ans2];
        
        id msg2 = [NSString stringWithFormat:@"%@（%@ | %@）",result_localize2,result,result2];
        [label4 setText:msg2];
        field.enabled = NO;
        
        
        /*CGRect r0 = [UIScreen mainScreen].bounds;
        CGRect r = CGRectMake(((r0.size.width/2)-(134/2)), 185, 134, 30);
        UIButton * btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        btn.frame = r;
        id str2 = [NSString stringWithFormat:@"戻る"];
        [btn setTitle:str2 forState: UIControlStateNormal];
        [btn addTarget:self action:@selector(buttonAction2:) forControlEvents:UIControlEventTouchUpInside];
        [buttonArr addObject:btn];
        [self.view addSubview:btn];*/
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
@dynamic label5;
@dynamic field;
@dynamic test;
@dynamic btn;


- (IBAction)buttonAction:(id)sender {

    if(self.a < 10){
        
        self.a = self.a + 1;
        NSString * moji3;
        moji3 = [NSString stringWithFormat:@"%d", self.a];
        id msg2 = [NSString stringWithFormat:@"%@/10",moji3];
        [label4 setText:msg2];
        
        int str = [field text].intValue;
        
        if (str ==  self.c){
            self.ans1 = self.ans1 + 1;
            
            id msg0 = [NSString stringWithFormat:NSLocalizedString(@"Correct answer", nil)];
            //label5.text = NSLocalizedString(@"Correct answer", nil);
            label5.textColor = [UIColor blueColor];
            [label5 setText:msg0];
            id msg = [NSString stringWithFormat:NSLocalizedString(@"Correct answer localize", nil),self.a,self.b1,self.b2,self.c];
            [label2 setText:msg];
            [self viewDidLoad];
            
        }else{
            self.ans2 = self.ans2 + 1;
            
            id msg0 = [NSString stringWithFormat:NSLocalizedString(@"Wrong answer", nil)];
            //label5.text = NSLocalizedString(@"Wrong answer", nil);
            label5.textColor = [UIColor redColor];
            [label5 setText:msg0];
            id msg = [NSString stringWithFormat:NSLocalizedString(@"Wrong answer localize", nil),self.a,self.b1,self.b2,self.c];
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
    self.ans1 = 0;
    self.ans2 = 0;
    
    self.a = 0;
    id msg0 = [NSString stringWithFormat:@""];
    [label5 setText:msg0];
    id msg = [NSString stringWithFormat:@""];
    [label2 setText:msg];
    
    NSString * moji3;
    moji3 = [ NSString stringWithFormat : @"%d", self.a];
    id msg2 = [NSString stringWithFormat:@"%@/10",moji3];
    [label4 setText:msg2];
    
    [self viewDidLoad];
    field.enabled = YES;
    
    //[sender removeFromSuperview];
    btn.alpha = 0;

    test.alpha = 1;
}


- (IBAction)inputField{
    
    UIView* accessoryView =[[UIView alloc] initWithFrame:CGRectMake(0,0,320,50)];
    accessoryView.backgroundColor = [UIColor whiteColor];
    
    // ボタンを作成
    UIButton* closeButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    closeButton.frame = CGRectMake(0,10,100,30);
    [closeButton setTitle:@"閉じる" forState:UIControlStateNormal];
    // ボタンを押したときの動作
    [closeButton addTarget:self action:@selector(closeKeyboard:) forControlEvents:UIControlEventTouchUpInside];
    // サブビュー作成
    [accessoryView addSubview:closeButton];
    
    field.inputAccessoryView = accessoryView;
    
}
//キーボードを閉じる
-(void)closeKeyboard:(id)sender{
    [field resignFirstResponder];
}


@end
