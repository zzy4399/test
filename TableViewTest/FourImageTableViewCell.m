//
//  FourImageTableViewCell.m
//  TableViewTest
//
//  Created by 周子尧 on 16/2/18.
//  Copyright (c) 2016年 周子尧. All rights reserved.
//

#import "FourImageTableViewCell.h"

@implementation FourImageTableViewCell

- (void)awakeFromNib {
    // Initialization code
//    self.btnFirst.imageView.image=[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"timeFree@2x" ofType:@"png"]];
//    self.btnFirst.imageView.image=[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"necessary_item@2x" ofType:@"png"]];
//    self.btnFirst.imageView.image=[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"forum_item@2x" ofType:@"png"]];
//    self.btnFirst.imageView.image=[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"gift_item@2x" ofType:@"png"]];
    
    [self.btnFirst setImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"timeFree@2x" ofType:@"png"]] forState:UIControlStateNormal];
    [self.btnSecond setImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"necessary_item@2x" ofType:@"png"]] forState:UIControlStateNormal];
    [self.btnThird setImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"forum_item@2x" ofType:@"png"]] forState:UIControlStateNormal];
    [self.btnForth setImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"gift_item@2x" ofType:@"png"]] forState:UIControlStateNormal];
    
    self.btnFirst.tag=1;
    self.btnSecond.tag=2;
    self.btnThird.tag=3;
    self.btnForth.tag=4;
    
    [self.btnFirst addTarget:self action:@selector(actionToButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.btnSecond addTarget:self action:@selector(actionToButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.btnThird addTarget:self action:@selector(actionToButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.btnForth addTarget:self action:@selector(actionToButton:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)actionToButton:(UIButton *)btn{

    NSLog(@"%ld",btn.tag);
    
}

@end
