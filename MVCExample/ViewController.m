//
//  ViewController.m
//  MVCExample
//
//  Created by Zac on 21/01/2015.
//  Copyright (c) 2015 1st1k. All rights reserved.
//

#import "ViewController.h"
#import "XZZTask.h"
#import "XZZTaskCell.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSMutableArray *tasksArrary;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    XZZTask *task1 = [[XZZTask alloc] init];
    task1.title = @"Eat Breakfast";
    task1.isCompleted = NO;
    XZZTask *task2 = [[XZZTask alloc] init];
    task2.title = @"Go Running";
    task2.isCompleted = YES;
    XZZTask *task3 = [[XZZTask alloc] init];
    task3.title = @"Do Homework";
    task3.isCompleted = NO;
    self.tasksArrary = [@[task1, task2, task3] mutableCopy];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableView DataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.tasksArrary count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    XZZTaskCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TaskCell" forIndexPath:indexPath];
    if (cell == nil) {
        cell = [[XZZTaskCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"TaskCell"];
    }
    XZZTask *task = self.tasksArrary[indexPath.row];
    cell.taskTitle.text = task.title;
    cell.isCompleted = task.isCompleted;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    XZZTask *task = self.tasksArrary[indexPath.row];
    task.isCompleted = !task.isCompleted;
    [tableView reloadData];
}

@end
