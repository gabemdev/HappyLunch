//
//  DrinkTableViewCell.h
//  HappyLunch
//
//  Created by Rockstar. on 3/18/15.
//  Copyright (c) 2015 Fantastik. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DrinkTableViewCellDelegate <NSObject>

@optional

- (void)drinkTableViewCell:(id)cell didTapButton:(UIButton *)button;

@end

@interface DrinkTableViewCell : UITableViewCell

@property (nonatomic, assign) id <DrinkTableViewCellDelegate> delegate;

@end
