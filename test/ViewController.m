//
//  ViewController.m
//  test
//
//  Created by Syed Zaidi on 2016-02-23.
//  Copyright © 2016 Syed Zaidi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    la = [[UILabel alloc]initWithFrame:CGRectMake(320, 100, 200, 60)];
    
    la.text = @"This is my music line";
    
    [self.view addSubview:la];
    
    [NSTimer scheduledTimerWithTimeInterval:2.0
                                     target:self
                                   selector:@selector(LabelAnimation)
                                   userInfo:nil
                                    repeats:YES];
    // Do any additional setup after loading the view, typically from a nib.
    //Making a change
    
}
-(void)LabelAnimation
{
    [UIView animateWithDuration:3.0f delay:0.0f options:UIViewAnimationOptionTransitionNone animations:^{
        la.frame = CGRectMake(-320, 100, 200, 60);
    } completion:^(BOOL finished)
     {
         la.frame = CGRectMake(320, 100, 200, 60);
     }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
