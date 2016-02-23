//
//  Game.h
//  TableViewTest
//
//  Created by 周子尧 on 16/2/18.
//  Copyright (c) 2016年 周子尧. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Game : NSObject

@property NSString * strImageName;
@property NSString * strName;
@property float fScore;
@property NSString * strGameType;
@property NSString * strLanguage;
@property double fSize;
@property float fPrice;

@property (readonly)NSString * strInfo;
@property (readonly)NSString * strPrice;

- (instancetype)initWithImageName:(NSString *)strImageName GameName:(NSString*)strName Score:(float)fScore GameType:(NSString *)strGameType Language:(NSString *)strLanguage FileSizeByte:(double)fSize Price:(float)fPrice;

@end
