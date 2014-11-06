//
//  ViewController.m
//  TestMVC
//
//  Created by Alexander on 06.11.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import "ViewController.h"




@interface ViewController ()
@property (nonatomic, weak) IBOutlet UIButton *butt;
@property (nonatomic, strong) IBOutletCollection(UIButton) NSArray *buttArr;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
    
    NSNumber *numb = [[NSUserDefaults standardUserDefaults] objectForKey:@"qwerty"];
    float size = numb? numb.floatValue : 15;
    self.butt.titleLabel.font = [UIFont systemFontOfSize:size];
}

- (UIColor *)randColor
{
    CGFloat hue = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
    CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
    CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
    UIColor *color = [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
    return color;
}

- (IBAction)buttonPressed:(UIButton *)sender
{
    UIFont *font = self.butt.titleLabel.font;
    float fontSize = font.pointSize;
    fontSize += 1.0;
    self.butt.titleLabel.font = [UIFont systemFontOfSize:fontSize];
    
    [[NSUserDefaults standardUserDefaults] setObject:@(fontSize) forKey:@"qwerty"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
//    UIColor *randColor = [self randColor];
//    for (UIButton *butt in self.buttArr) {
//        butt.backgroundColor = randColor;
//    }
//    NSLog(@"%@", @"tapped");
//    NSLog(@"%@", self.buttArr);
    
}

- (IBAction)buttonTapInside
{
    NSLog(@"%@", @"tapped 2");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
