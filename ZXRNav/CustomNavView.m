//
//  CustomNavView.m
//  HUAYI
//
//  Created by Albert on 7/19/16.
//  Copyright © 2016 zhan xingrong. All rights reserved.
//


#import "CustomNavView.h"
#import "Masonry.h"
#define W_SCREEN [UIScreen mainScreen].bounds.size.width
#define H_SCREEN [UIScreen mainScreen].bounds.size.height
#define KIsiPhoneX ((int)((H_SCREEN/W_SCREEN)*100) == 216)?YES:NO
#define Height_StatusBar (KIsiPhoneX==YES)?44.0f:20.0f

@implementation CustomNavView

- (instancetype)init{
    self = [super init];
    if (self) {
        [self commonInit];
        
    }
    return self;
}

-(void)commonInit{
    self.frame = CGRectMake(0, 0, W_SCREEN, H_SCREEN);
    self.backgroundColor = [UIColor whiteColor];
    

    _middleBtn = [[UIButton alloc] initWithFrame:CGRectMake((W_SCREEN-150)/2,Height_StatusBar, 150, 44)];
    [_middleBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_middleBtn.titleLabel setFont:[UIFont systemFontOfSize:20]];
    
    _leftBtn = [[UIButton alloc] initWithFrame:CGRectMake(0,Height_StatusBar, 45, 45)];
    _leftBtn.backgroundColor = [UIColor clearColor];
//    [_leftBtn setImage:[UIImage imageNamed:[UIImage imageNamed:@"back"]] forState:UIControlStateNormal];
    [_leftBtn addTarget:self action:@selector(backAction:) forControlEvents:UIControlEventTouchUpInside];
    
    _rightBtn = [[UIButton alloc] initWithFrame:CGRectMake(W_SCREEN - 50, Height_StatusBar, 45, 45)];
    _rightBtn.backgroundColor = [UIColor clearColor];
    [_rightBtn addTarget:self action:@selector(pushAction:) forControlEvents:UIControlEventTouchUpInside];
    
    _lineView = [[UIView alloc] init];
    _lineView.backgroundColor  = [UIColor colorWithRed:0.89 green:0.89 blue:0.89 alpha:1];
    
    [self addSubview:_middleBtn];
    [self addSubview:_leftBtn];
    [self addSubview:_rightBtn];
    [self addSubview:_lineView];
    [_lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.mas_left);
        make.right.mas_equalTo(self.mas_right);
        make.height.mas_equalTo(1);
        make.bottom.mas_equalTo(self.mas_bottom);
    }];
}


-(void)setBackStytle:(NSString *)title rightImage:(NSString *)rightImageStr{
    
    [self.middleBtn setTitle:title forState:UIControlStateNormal];
    [self.middleBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//    [self.leftBtn setImage:[UIImage imageNamed:Image(rightImageStr)] forState:UIControlStateNormal];
    [self.middleBtn.titleLabel setFont:[UIFont systemFontOfSize:18.0f]];
}

-(void)backAction:(id)sender
{
    if (_backBlock) {
        _backBlock();
    }
}

-(void)pushAction:(id)sender
{
    if (_pushBlock) {
        _pushBlock();
    }
}




@end
