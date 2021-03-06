//
//  FourthViewController.m
//  LJAppStandard
//
//  Created by liang on 16/4/10.
//  Copyright © 2016年 liang. All rights reserved.
//

#import "FourthViewController.h"
#import "SecondViewController.h"
#import "TestViewController.h"
#import "CustomCell.h"
#import "TimeButtonController.h"
@interface FourthViewController ()<UITableViewDelegate, UITableViewDataSource>

@end

@implementation FourthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.isSupportScrollingHideNavigationBar = YES;
    UITableView *tv = [UICreator createTableWithStyle:UITableViewStylePlain seporatorLineColor:[UIColor grayColor] headerView:nil footerView:nil delegate:self];
    tv.frame = DeviceRect;
    [self addRefreshHeaderAndFooter:tv];
    [tv registerNib:[UINib nibWithNibName:@"CustomCell" bundle:nil] forCellReuseIdentifier:CellId];
    tv.rowHeight = 80;
    [self.view addSubview:tv];
    
    NSLog(@"self ===== %@", self);
}

#pragma mark - **************** UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 20;
}

static NSString * const CellId = @"CellId";
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:CellId];
//    cell.textLabel.text = [NSString stringWithFormat:@"%ld", indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
//    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.navigationController.view animated:YES];
//    [self.navigationController pushViewController:[TestViewController new] animated:YES];
//    [self endRefreshing];
    [self.navigationController pushViewController:[TimeButtonController new] animated:YES];
    
    NSLog(@"cell");
}

@end
