//
//  RecipeViewController.m
//  Recipe App
//
//  Created by James Carlson on 6/25/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "RecipeViewController.h"
#import "RARecipes.h"

@interface RecipeViewController () <UITableViewDataSource>

@end

@implementation RecipeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITableView *recipeTable = [[UITableView alloc] initWithFrame:self.view.frame];
    
    recipeTable.dataSource = self;
    
    [self.view addSubview:recipeTable];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [UITableViewCell new];
    
    cell.textLabel.text = [RARecipes titleAtIndex:indexPath.row];
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [RARecipes count];
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
