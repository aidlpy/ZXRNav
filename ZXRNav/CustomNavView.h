//
//  CustomNavView.h
//  HUAYI
//
//  Created by Albert on 7/19/16.
//  Copyright © 2016 zhan xingrong. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^backActionBlock)(void);
typedef void(^pushActionBlock)(void);

@interface CustomNavView : UIView
@property(nonatomic,retain)UIButton *middleBtn;
@property(nonatomic,retain) UIImageView *leftImaV;
@property(nonatomic,retain) UIButton *leftBtn;
@property(nonatomic,retain) UIButton *rightBtn;
@property(nonatomic,retain)UIView *lineView;
@property(nonatomic,copy)backActionBlock  backBlock;
@property(nonatomic,copy)pushActionBlock  pushBlock;
-(void)setBackStytle:(NSString *)title rightImage:(NSString *)rightImageStr;

@end
