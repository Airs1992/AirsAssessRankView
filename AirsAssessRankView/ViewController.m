//
//  ViewController.m
//  AirsAssessRankView
//
//  Created by 洪尘 on 16/5/19.
//  Copyright © 2016年 洪尘. All rights reserved.
//

#import "ViewController.h"
#import "AirsAssessRankView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet AirsAssessRankView *starView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _starView.starNum = 6;
}

- (IBAction)theRank:(id)sender {
    NSLog(@"%f",self.starView.rank);
}

@end
