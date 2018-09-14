//
//  SearchPage.m
//  bus
//
//  Created by by.huang on 2018/9/14.
//  Copyright © 2018年 by.huang. All rights reserved.
//

#import "SearchPage.h"

@interface SearchPage ()

@end

@implementation SearchPage


+(void)show:(BaseViewController *)controller{
    SearchPage *page = [[SearchPage alloc]init];
    [controller pushPage:page];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self showSTNavigationBar:MSG_MAIN_TITLE needback:YES];
    [self initView];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self setStatuBarBackgroud:c01 style:UIStatusBarStyleLightContent];
}

-(void)initView{
    
}



@end
