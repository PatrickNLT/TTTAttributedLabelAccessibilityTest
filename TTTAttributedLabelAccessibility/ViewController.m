//
//  ViewController.m
//  TTTAttributedLabelAccessibility
//
//  Created by Patrick Nollet on 03/12/2015.
//
//

#import "ViewController.h"

#import <TTTAttributedLabel/TTTAttributedLabel.h>

@interface ViewController ()

@end

@implementation ViewController

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
        TTTAttributedLabel *label = [[TTTAttributedLabel alloc] initWithFrame:cell.contentView.bounds];
        label.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
        [cell.contentView addSubview:label];

        label.text = @"This is a cell";
    }
    return cell;
}
@end
