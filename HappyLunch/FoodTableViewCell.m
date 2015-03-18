//
//  FoodTableViewCell.m
//  HappyLunch
//
//  Created by Rockstar. on 3/18/15.
//  Copyright (c) 2015 Fantastik. All rights reserved.
//

#import "FoodTableViewCell.h"

@implementation FoodTableViewCell


- (IBAction)onFoodItemPressed:(id)sender {
    [self.delegate foodTableViewCell:self didTapButton:sender];
}

@end
