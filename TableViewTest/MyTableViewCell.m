//
//  MyTableViewCell.m
//  TableViewTest
//
//  Created by 周子尧 on 16/2/17.
//  Copyright (c) 2016年 周子尧. All rights reserved.
//

#import "MyTableViewCell.h"

@implementation MyTableViewCell

- (void)awakeFromNib {
    // Initialization code
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (instancetype)init{
    
    if (self=[super init]) {
        
    }
    return self;
}

- (void)setGame:(Game *)newGame{
    game=newGame;
    if (game==nil) {
        return;
    }
    
    //  game!=nil
    self.imgLogo.image=[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Icon" ofType:@"png"]];
    self.txtName.text=game.strName;
    self.progressScore.progress=game.fScore/5;
    self.txtComments.text=game.strInfo;
    
}

-(Game *)game{
    return game;
}

@end
