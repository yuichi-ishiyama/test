//
//  ViewController.h
//  test
//
//  Created by yuichi ishiyama on 2016/06/07.
//  Copyright © 2016年 yuichi ishiyama. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate> {
    UILabel * label;
    UILabel * label2;
    UILabel * label3;
    UILabel * label4;
    UILabel * label5;
    UITextField * field;
    NSMutableArray * buttonArr;
    UIButton * test;
    UIButton * btn;
}

@property (nonatomic, retain) IBOutlet UILabel * label;
@property (nonatomic, retain) IBOutlet UILabel * label2;
@property (nonatomic, retain) IBOutlet UILabel * label3;
@property (nonatomic, retain) IBOutlet UILabel * label4;
@property (nonatomic, retain) IBOutlet UILabel * label5;
@property (nonatomic, retain) IBOutlet UITextField * field;
- (IBAction)inputField;
@property (nonatomic, retain) IBOutlet UIButton * test;
@property (nonatomic, retain) IBOutlet UIButton * btn;


@property (retain) NSMutableArray * buttonArr;


@property (assign,nonatomic) int a;
@property (assign,nonatomic) int b1;
@property (assign,nonatomic) int b2;
@property (assign,nonatomic) int c;
@property (assign,nonatomic) int ans1;
@property (assign,nonatomic) int ans2;

- (IBAction)buttonAction:(id)sender;
- (IBAction)buttonAction2:(id)sender;
@end

