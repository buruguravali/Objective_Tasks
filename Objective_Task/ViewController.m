//
//  ViewController.m
//  Objective_Task
//
//  Created by Ravali on 11/5/21.
//

#import "ViewController.h"
#import "Objective_Task-Swift.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tvArray = [[NSMutableArray alloc]initWithObjects:@"Amazon",@"Flipkart",@"Costco",@"Wallmart",@"Macys", nil];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return  self.tvArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DataCell" forIndexPath:indexPath];
    if(cell == nil){
        cell= [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"DataCell"];
    }
    cell.textLabel.text = self.tvArray[indexPath.row];
    return  cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    DetailsVC *vc = [[DetailsVC alloc]init];
    vc.detailedText = self.tvArray[indexPath.row];
    [self.navigationController pushViewController:vc animated:true];
}
@end
