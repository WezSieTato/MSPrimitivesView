//
//  MSRoundedRectController.m
//  MSPrimitivesView
//
//  Created by Marcin Stepnowski on 17/04/15.
//  Copyright (c) 2015 WezSieTato. All rights reserved.
//

#import "MSRoundedRectController.h"
#import <MSPrimitivesView/MSRoundedRectView.h>

@interface MSRoundedRectController ()

@end

@implementation MSRoundedRectController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIRectCorner corner = UIRectCornerTopRight | UIRectCornerBottomLeft;
    MSRoundedRectView *rect = [MSRoundedRectView rectWithCorner:corner
                                                         color:[UIColor yellowColor]
                                                        radius:50];
    CGRect frame = CGRectMake(0, 0, 300, 100);
    [rect setFrame:frame];
    CGPoint center = {self.view.frame.size.width /2 , self.view.frame.size.height / 2};
    [rect setCenter: center];
    
    [self.view addSubview:rect];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
