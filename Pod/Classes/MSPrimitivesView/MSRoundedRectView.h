//
//  MSRoundedRectView.h
//  TestPOPu
//
//  Created by Marcin Stepnowski on 17/04/15.
//  Copyright (c) 2015 siema. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface MSRoundedRectView : UIView

@property (nonatomic) IBInspectable float cornerRadius;
@property (nonatomic) IBInspectable UIColor* rectColor;

@property (nonatomic) IBInspectable BOOL topLeftCorner;
@property (nonatomic) IBInspectable BOOL topRightCorner;
@property (nonatomic) IBInspectable BOOL bottomLeftCorner;
@property (nonatomic) IBInspectable BOOL bottomRightCorner;

@property (nonatomic) UIRectCorner corner;

-(instancetype)initWithRectCorner:(UIRectCorner)corner;
-(instancetype)initWithRectCorner:(UIRectCorner)corner color:(UIColor*)color;
-(instancetype)initWithRectCorner:(UIRectCorner)corner color:(UIColor*)color radius:(float)radius;

+(instancetype)rectWithCorner:(UIRectCorner)corner;
+(instancetype)rectWithCorner:(UIRectCorner)corner color:(UIColor*)color;
+(instancetype)rectWithCorner:(UIRectCorner)corner color:(UIColor*)color radius:(float)radius;

@end
