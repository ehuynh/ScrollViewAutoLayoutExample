//
//  ViewController.m
//  ScrollViewAutoLayoutExample
//
//  Created by Edward Huynh on 12/11/2013.
//  Copyright (c) 2013 Edward Huynh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self addBeeView];
}

- (void)addBeeView
{
    UIView *beeView = [[[NSBundle mainBundle] loadNibNamed:@"BeeView" owner:nil options:nil] firstObject];
    beeView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.scrollView addSubview:beeView];
    
    NSDictionary *views = @{@"beeView":beeView};
    NSDictionary *metrics = @{@"height" : @600, @"width" : @900};
    [self.scrollView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[beeView(height)]|" options:kNilOptions metrics:metrics views:views]];
    [self.scrollView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[beeView(width)]|" options:kNilOptions metrics:metrics views:views]];
}

@end
