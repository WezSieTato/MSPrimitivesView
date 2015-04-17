//
//  MSRoundedRectView.m
//  TestPOPu
//
//  Created by Marcin Stepnowski on 17/04/15.
//  Copyright (c) 2015 siema. All rights reserved.
//

#import "MSRoundedRectView.h"


@implementation MSRoundedRectView

#pragma mark - Init

-(void)setDefaultParameters{
    self.corner = UIRectCornerAllCorners;
    self.rectColor = [UIColor grayColor];
    self.cornerRadius = 90;
    self.backgroundColor = [UIColor clearColor];
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setDefaultParameters];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self setDefaultParameters];
    }
    return self;
}

-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if(self){
        self.rectColor = [UIColor grayColor];
        if(!self.backgroundColor)
            self.backgroundColor = [UIColor clearColor];
    }
    
    return self;
}

-(instancetype)initWithRectCorner:(UIRectCorner)corner color:(UIColor*)color radius:(float)radius
{
    self = [self init];
    if (self) {
        self.corner = corner;
        self.rectColor = color;
        self.cornerRadius = radius;
    }
    return self;
}

-(instancetype)initWithRectCorner:(UIRectCorner)corner color:(UIColor *)color{
    return [self initWithRectCorner:corner color:color radius:90];
}

-(instancetype)initWithRectCorner:(UIRectCorner)corner{
    return [self initWithRectCorner:corner color:[UIColor grayColor]];
}

#pragma mark - Create

+(instancetype)rectWithCorner:(UIRectCorner)corner
{
    return [[self alloc] initWithRectCorner:corner];
}

+(instancetype)rectWithCorner:(UIRectCorner)corner color:(UIColor*)color
{
    return [[self alloc] initWithRectCorner:corner color:color];
}

+(instancetype)rectWithCorner:(UIRectCorner)corner color:(UIColor*)color radius:(float)radius
{
    return [[self alloc] initWithRectCorner:corner color:color radius:radius];
}

#pragma mark - Property

-(void)setCornerRadius:(float)cornerRadius{
    _cornerRadius = cornerRadius;
    [self setNeedsDisplay];
}

-(void)setRectColor:(UIColor *)rectColor{
    _rectColor = rectColor;
    [self setNeedsDisplay];
}

-(void)setCorner:(UIRectCorner)corner{
    _corner = corner;
    [self setNeedsDisplay];
}

-(void)setCornerType:(UIRectCorner)type value:(BOOL)value{
    UIRectCorner corn = type;
    self.corner = value ?
    self.corner | corn : (self.corner |! corn);
    [self setNeedsDisplay];
}

-(BOOL)getCornerType:(UIRectCorner)type{
    return self.corner & type;
}

-(void)setTopRightCorner:(BOOL)topRightCorner{
    [self setCornerType:UIRectCornerTopRight value:topRightCorner];
}

-(BOOL)topRightCorner{
    return [self getCornerType:UIRectCornerTopRight];
}

-(void)setTopLeftCorner:(BOOL)topLeftCorner{
    [self setCornerType:UIRectCornerTopLeft value:topLeftCorner];
}

-(BOOL)topLeftCorner{
    return [self getCornerType:UIRectCornerTopLeft];
}

-(void)setBottomRightCorner:(BOOL)bottomRightCorner{
    [self setCornerType:UIRectCornerBottomRight value:bottomRightCorner];
}

-(BOOL)bottomRightCorner{
    return [self getCornerType:UIRectCornerBottomRight];
}

-(void)setBottomLeftCorner:(BOOL)bottomLeftCorner{
    [self setCornerType:UIRectCornerBottomLeft value:bottomLeftCorner];
}

-(BOOL)bottomLeftCorner{
    return [self getCornerType:UIRectCornerBottomLeft];
}

#pragma mark - Draw

- (void)drawRect:(CGRect)rect {
    
    [super drawRect:rect];
    
    float rad = self.cornerRadius;
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:rect
                                                   byRoundingCorners:self.corner
                                                         cornerRadii:CGSizeMake(rad, rad)];

    [self.rectColor setFill];
    [maskPath fill];
    
}

#pragma mark - Interface Builder

-(void)prepareForInterfaceBuilder{
    [super prepareForInterfaceBuilder];
    if(!self.rectColor)
        self.rectColor = [UIColor grayColor];
}

@end
