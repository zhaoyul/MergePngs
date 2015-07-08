//
//  ViewController.m
//  MergePngs
//
//  Created by Zhaoyu Li on 7/8/15.
//  Copyright (c) 2015 Zhaoyu Li. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)

#define IMG_WIDTH SCREEN_WIDTH * 1.3


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.imageView.frame = CGRectMake(0, 0, IMG_WIDTH, IMG_WIDTH);
    self.imageView.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
 
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
