//
//  XZZTaskCell.h
//  MVCExample
//
//  Created by Zac on 21/01/2015.
//  Copyright (c) 2015 1st1k. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XZZTaskCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *taskTitle;
@property (assign, nonatomic) BOOL isCompleted;

@end
