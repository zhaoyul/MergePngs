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
    [self.view addSubview:self.imageView];
    self.imageView.frame = CGRectMake(0, 0, IMG_WIDTH, IMG_WIDTH);
    self.imageView.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
 
}

- (UIImage*) createImageWithImage:(UIImage*) image1 andImage:(UIImage*) image2

{
    NSAssert( CGSizeEqualToSize(image1.size, image2.size), @"image 1 and image 2 should have equal size");
    
    CGSize offScreenSize = image1.size;
    
    UIGraphicsBeginImageContext(offScreenSize);
    [image1 drawInRect:CGRectMake(0, 0, offScreenSize.width, offScreenSize.height)];
    [image2 drawInRect:CGRectMake(0, 0, offScreenSize.width, offScreenSize.height)];
    UIImage* imagez = UIGraphicsGetImageFromCurrentImageContext();
    if (image1 && image2)
    {
        
    }
    
    UIGraphicsEndImageContext();
    return imagez;

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    static NSInteger counter = 0;
    NSString *imageName = @(++counter).stringValue;
    if (counter >= 6) {
        return;
    }
    UIImage *image = [self createImageWithImage:self.imageView.image andImage:[UIImage imageNamed:imageName]];
    self.imageView.image = image;
}

@end
