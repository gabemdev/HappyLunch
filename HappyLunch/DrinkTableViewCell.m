//
//  DrinkTableViewCell.m
//  HappyLunch
//
//  Created by Rockstar. on 3/18/15.
//  Copyright (c) 2015 Fantastik. All rights reserved.
//

#import "DrinkTableViewCell.h"

@implementation DrinkTableViewCell

- (IBAction)onDrunkButtonTapped:(id)sender {
    [self.delegate drinkTableViewCell:self didTapButton:sender];

}


@end
