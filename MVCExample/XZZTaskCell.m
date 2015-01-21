//
//  XZZTaskCell.m
//  MVCExample
//
//  Created by Zac on 21/01/2015.
//  Copyright (c) 2015 1st1k. All rights reserved.
//

#import "XZZTaskCell.h"

@implementation XZZTaskCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setIsCompleted:(BOOL)isCompleted
{
    if (isCompleted) {
        self.taskTitle.textColor = [UIColor redColor];
    }
    else {
        self.taskTitle.textColor = [UIColor greenColor];
    }
}

@end
