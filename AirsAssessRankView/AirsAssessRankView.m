//
//  AirsAssessRankView.m
//  AirsAssessRankView
//
//  Created by 洪尘 on 16/5/19.
//  Copyright © 2016年 洪尘. All rights reserved.
//

#import "AirsAssessRankView.h"

@interface AirsAssessRankView()

@property(assign,nonatomic) CGFloat currentX;

@end

@implementation AirsAssessRankView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    [super drawRect:rect];
    UIImage *star = [UIImage imageNamed:@"star"];
    CGFloat width = rect.size.width/self.starNum;
    for (int i=0; i<self.starNum; i++) {
        [star drawInRect:CGRectMake(width*i, 0, width, rect.size.height)];
        
    }
    [[UIColor whiteColor]setFill];
    UIRectFillUsingBlendMode(rect, kCGBlendModeSourceIn);
    
    [[UIColor orangeColor]setFill];
    UIRectFillUsingBlendMode(CGRectMake(0, 0, self.currentX, rect.size.height), kCGBlendModeSourceIn);
}

-(CGFloat)rank
{
    _rank = _currentX/(self.frame.size.width/self.starNum);
    return _rank;
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    self.currentX = [[touches anyObject]locationInView:self].x;
    [self setNeedsDisplay];
}

@end
