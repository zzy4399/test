//
//  Game.m
//  TableViewTest
//
//  Created by 周子尧 on 16/2/18.
//  Copyright (c) 2016年 周子尧. All rights reserved.
//

#import "Game.h"

@implementation Game

@dynamic strInfo;
@dynamic strPrice;

- (NSString *)strInfo{

    double fileSize=self.fSize/1024/1024;
    return [[NSString alloc] initWithFormat:@"%@|%@|%.2fM",self.strGameType,self.strLanguage,fileSize];
}

- (NSString *)strPrice{

    if (self.fPrice==0) {
        return @"免费";
    }
    return [[NSString alloc] initWithFormat:@"%f",self.fPrice];
}

- (instancetype)initWithImageName:(NSString *)strImageName GameName:(NSString *)strName Score:(float)fScore GameType:(NSString *)strGameType Language:(NSString *)strLanguage FileSizeByte:(double)fSize Price:(float)fPrice{

    if (self=[super init]) {
        self.strImageName=strImageName;
        self.strName=strName;
        self.fScore=fScore;
        self.strGameType=strGameType;
        self.strLanguage=strLanguage;
        self.fSize=fSize;
        self.fPrice=fPrice;
    }
    return self;
}

@end
