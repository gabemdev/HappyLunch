//
//  OrderViewController.m
//  HappyLunch
//
//  Created by Rockstar. on 3/18/15.
//  Copyright (c) 2015 Fantastik. All rights reserved.
//

#import "OrderViewController.h"
#import "FoodTableViewCell.h"
#import "DrinkTableViewCell.h"

@interface OrderViewController ()<UITableViewDataSource, UITableViewDelegate, FoodTableViewCellDelegate, DrinkTableViewCellDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *selectedFoodImageView;
@property (weak, nonatomic) IBOutlet UIImageView *selectedDrinkImageView;


@end

@implementation OrderViewController

static NSString *const kFoodCell = @"FoodCell";
static NSString *const kDrinkCell = @"DrinkCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    if (indexPath.row == 0) {
        FoodTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kFoodCell];
        cell.delegate = self;
        return cell;
    } else {
        DrinkTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kDrinkCell];
        cell.delegate = self;
        return cell;
    }
}

- (void)foodTableViewCell:(id)cell didTapButton:(UIButton *)button {
    self.selectedFoodImageView.image = button.imageView.image;
    
}

- (void)drinkTableViewCell:(id)cell didTapButton:(UIButton *)button {
    self.selectedDrinkImageView.image = button.imageView.image;
}


@end
