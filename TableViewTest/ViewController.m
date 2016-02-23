//
//  ViewController.m
//  TableViewTest
//
//  Created by 周子尧 on 16/2/17.
//  Copyright (c) 2016年 周子尧. All rights reserved.
//

#import "ViewController.h"

//tableview cell
#import "MyTableViewCell.h"
#import "FourImageTableViewCell.h"

const NSObject * FourImageObj;

@interface ViewController ()

@end

@implementation ViewController

- (instancetype)init{

    if(self=[super initWithNibName:@"MainView" bundle:nil]){
        array=[[NSMutableArray alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /*
        test model
     */
    Game * game1=[[Game alloc] initWithImageName:@"Icon.png" GameName:@"开心消消乐" Score:4.0f GameType:@"休闲娱乐" Language:@"中文" FileSizeByte:69.2*1024*1024 Price:0.0f];
    Game * game2=[[Game alloc] initWithImageName:@"Icon.png" GameName:@"极品飞车：无极限" Score:4.5f GameType:@"体育竞技" Language:@"中文" FileSizeByte:841*1024*1024 Price:0.0f];
    Game * game3=[[Game alloc] initWithImageName:@"Icon.png" GameName:@"球球大作战" Score:3.0f GameType:@"休闲娱乐" Language:@"中文" FileSizeByte:68.9*1024*1024 Price:0.0f];
    if (!FourImageObj) {
        FourImageObj=[[NSObject alloc] init];
    }
    [array addObject:game1];
    [array addObject:game2];
    [array addObject:game3];
    [array addObject:FourImageObj];
    [(UITableView *)self.view reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - tableview delegate -
//tableview delegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{

    return array.count;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    NSUInteger index=[indexPath indexAtPosition:0];
    NSObject * object=[array objectAtIndex:index];
    Game * game=[array objectAtIndex:index];
    MyTableViewCell * cell;
    
    
    if ([object isKindOfClass:[Game class]]) {
        
        NSString * strIdentifity=@"tableviewcellidentifity Game";
        
        cell=[tableView dequeueReusableCellWithIdentifier:strIdentifity];
        if (cell==nil) {
            
            NSArray * arrayNib=[[NSBundle mainBundle] loadNibNamed:@"MyTableViewCell" owner:self options:nil];
            cell=[arrayNib objectAtIndex:0];
            cell.game=game;
        }
    }else if (object==FourImageObj){
    
        NSString * strIdentifity=@"tableviewcellidentifity FourImage";
        cell=[tableView dequeueReusableCellWithIdentifier:strIdentifity];
        if (cell==nil) {
            
            NSArray * arrayNib=[[NSBundle mainBundle] loadNibNamed:@"FourImageTableViewCell" owner:self options:nil];
            cell=[arrayNib objectAtIndex:0];
            
        }
        
    }
    
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{

    NSUInteger index=[indexPath indexAtPosition:0];
    NSObject * object=[array objectAtIndex:index];
    if ([object isKindOfClass:[Game class]]) {
        
        //get cell height
        NSArray * arrayNib=[[NSBundle mainBundle] loadNibNamed:@"MyTableViewCell" owner:self options:nil];
        MyTableViewCell * cell=[arrayNib objectAtIndex:0];
        return cell.bounds.size.height;
        
    }else if (object==FourImageObj){
        
        NSArray * arrayNib=[[NSBundle mainBundle] loadNibNamed:@"FourImageTableViewCell" owner:self options:nil];
        FourImageTableViewCell * cell=[arrayNib objectAtIndex:0];
        return cell.bounds.size.height;
        
    }
    
    
    return 0;
}

@end
