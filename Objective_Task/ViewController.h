//
//  ViewController.h
//  Objective_Task
//
//  Created by Ravali on 11/5/21.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property NSMutableArray *tvArray;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

