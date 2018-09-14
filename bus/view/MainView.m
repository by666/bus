//
//  MainView.m
//  bus
//
//  Created by by.huang on 2018/9/13.
//  Copyright © 2018年 by.huang. All rights reserved.
//

#import "MainView.h"

@interface MainView()

@property(strong, nonatomic)UIButton *searchBtn;
@property(strong, nonatomic)MainViewModel *mViewModel;

@end

@implementation MainView

-(instancetype)initWithViewModel:(MainViewModel *)viewModel{
    if(self == [super init]){
        _mViewModel = viewModel;
        [self initView];
    }
    return self;
}

-(void)initView{
    _searchBtn = [[UIButton alloc]initWithFont:STFont(16) text:MSG_MAIN_SEARCH textColor:c01 backgroundColor:nil corner:STHeight(10) borderWidth:LineHeight borderColor:c01];
    _searchBtn.frame = CGRectMake((ScreenWidth - STWidth(120))/2, (ContentHeight -STHeight(40))/2 , STWidth(120), STHeight(40));
    [_searchBtn setImage:[UIImage imageNamed:@"ic_search"] forState:UIControlStateNormal];
    [_searchBtn addTarget:self action:@selector(onClickSearchBtn) forControlEvents:UIControlEventTouchUpInside];
    [_searchBtn setImageEdgeInsets:UIEdgeInsetsMake(0.0, -STWidth(10), 0.0, 0.0)];
    [self addSubview:_searchBtn];
    
}

-(void)onClickSearchBtn{
    if(_mViewModel){
        [_mViewModel clickSearch];
    }
}


@end
