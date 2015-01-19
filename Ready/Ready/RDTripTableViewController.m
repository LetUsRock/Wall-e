//
//  RDTripTableViewController.m
//  Ready
//
//  Created by Lee on 1/17/15.
//  Copyright (c) 2015 LetUsRock. All rights reserved.
//

#import "RDTripTableViewController.h"

#import "RDTripTableViewCell.h"
#import "RDTripTableViewCellCurrent.h"
#import "RDTripTableViewCellToday.h"
#import "RDTripTableViewCellFuture.h"

#import "RDPlaceSearchViewController.h"
#import "RDPlaceSearchView.h"

#import "RDTrip.h"

typedef enum : NSUInteger {
    RDTRipTableSectionCurrent = 0,
    RDTRipTableSectionToday,
    RDTRipTableSectionFuture,
} RDTRipTableSectionType;


@interface RDTripTableViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSMutableArray *tripMutableArray;
@property (weak, nonatomic) IBOutlet UITableView *tripTableView;
@property (weak, nonatomic) IBOutlet RDPlaceSearchView *placeSearchView;

@end

@implementation RDTripTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma - UITableViewDataSource

- (RDTripTableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    RDTripTableViewCell *cell;
    
    if (indexPath.section == RDTRipTableSectionCurrent) {
        RDTripTableViewCellCurrent *cell = (RDTripTableViewCellCurrent *)[tableView dequeueReusableCellWithIdentifier:@"RDTripTableViewCellCurrent"];
        return cell;
    } else if (indexPath.section == RDTRipTableSectionToday) {
        RDTripTableViewCellToday *cell = (RDTripTableViewCellToday *)[tableView dequeueReusableCellWithIdentifier:@"RDTripTableViewCellToday"];
        cell.startTimeLabel.text = @"@6:30 PM";
        cell.endTimeLabel.text = @"@6:50 PM";
        return cell;
    } else if (indexPath.section == RDTRipTableSectionFuture) {
        RDTripTableViewCellFuture *cell = (RDTripTableViewCellFuture *)[tableView dequeueReusableCellWithIdentifier:@"RDTripTableViewCellFuture"];
        return cell;
    } else {
        return cell;
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == RDTRipTableSectionCurrent) {
        return 1;
    } else if (section == RDTRipTableSectionToday) {
        return 5;
    } else if (section == RDTRipTableSectionFuture) {
        return 1;
    } else {
        return 0;
    }
}

#pragma - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

//- (void)scrollTableViewToSearchBarAnimated:(BOOL)animated
//{
//    [self.tableView scrollRectToVisible:self.searchBar.frame animated:animated];
//}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
//    if (scrollView.contentOffset.y < 44) {
//        self.tripTableView.scrollIndicatorInsets = UIEdgeInsetsMake(CGRectGetHeight(self.placeSearchView.bounds) - MAX(scrollView.contentOffset.y, 0), 0, 0, 0);
//    } else {
//        self.tripTableView.scrollIndicatorInsets = UIEdgeInsetsZero;
//    }
    CGRect searchBarFrame = self.placeSearchView.frame;
    
    if (scrollView.contentOffset.y > -searchBarFrame.size.height) {
        searchBarFrame.origin.y = MAX(-searchBarFrame.size.height - scrollView.contentOffset.y, -searchBarFrame.size.height);
        self.placeSearchView.frame = searchBarFrame;
    }
    
    else {
    }
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
