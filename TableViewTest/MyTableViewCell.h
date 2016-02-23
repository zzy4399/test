//
//  MyTableViewCell.h
//  TableViewTest
//
//  Created by 周子尧 on 16/2/17.
//  Copyright (c) 2016年 周子尧. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Game.h"

@interface MyTableViewCell : UITableViewCell{

    @private
    Game * game;
    
}
@property (weak, nonatomic) IBOutlet UIImageView *imgLogo;
@property (weak, nonatomic) IBOutlet UILabel *txtName;

@property (weak, nonatomic) IBOutlet UIProgressView *progressScore;

@property (weak, nonatomic) IBOutlet UILabel *txtComments;

@property Game * game;

//- (void)setGame:(Game *)game;

@end
