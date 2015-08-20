//
//  ViewController.m
//  DPHorizontalScrollList
//
//  Created by boombox on 15/8/20.
//  Copyright (c) 2015年 lidaipeng. All rights reserved.
//

#import "ViewController.h"
#import "DPHorizontalScrollView.h"

@interface ViewController ()<DPHorizontalScrollViewDelegate>

@end

@implementation ViewController

#pragma mark - ---------------------- override
- (void)viewDidLoad {
    [super viewDidLoad];
    DPHorizontalScrollView *horizontalScrollView = [[DPHorizontalScrollView alloc] initWithFrame:CGRectMake(0, 20, [UIScreen mainScreen].bounds.size.width, 350)];
    horizontalScrollView.scrollViewDelegate = self;
    [self.view addSubview:horizontalScrollView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - ---------------------- DPHorizontalScrollViewDelegate
- (NSInteger)numberOfColumnsInTableView{
    return 10;
}

- (CGFloat)tableView:(DPHorizontalScrollView *)tableView widthForColumnAtIndex:(NSInteger)index{
    return 150;
}

- (UIView *)tableView:(DPHorizontalScrollView *)tableView viewForColumnAtIndex:(NSInteger)index{
    UIView *view = [tableView reusableView];
    if (!view) {
        view = [UIView new];
    }
    view.backgroundColor = index % 2 == 0 ? [UIColor cyanColor] : [UIColor orangeColor];
    return view;
}

@end
