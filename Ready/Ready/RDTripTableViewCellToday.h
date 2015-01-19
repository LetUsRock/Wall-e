//
//  RDTripTableViewCell.h
//  Ready
//
//  Created by Lee on 1/17/15.
//  Copyright (c) 2015 LetUsRock. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RDTripTableViewCell.h"

@interface RDTripTableViewCellToday : RDTripTableViewCell

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *startTimeLabel;
@property (weak, nonatomic) IBOutlet UILabel *endTimeLabel;
@property (weak, nonatomic) IBOutlet UIImageView *colorImageView;

@end
