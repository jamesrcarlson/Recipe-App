//
//  DetialViewController.m
//  Recipe App
//
//  Created by James Carlson on 6/27/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "DetialViewController.h"
#import "RARecipes.h"

@interface DetialViewController () //<UITableViewDataSource>

@end

@implementation DetialViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = [RARecipes titleAtIndex:self.recipeIndex];

    NSInteger height = 100;

    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0,20, self.view.frame.size.width - 5, self.view.frame.size.height)];
    scrollView.frame = self.view.frame;
    [self.view addSubview:scrollView];
    scrollView.contentSize = CGSizeMake(scrollView.frame.size.width, scrollView.frame.size.height * 2.5);
    
    UILabel *description = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, self.view.frame.size.width - 12, 100)];
    description.text = [RARecipes descriptionAtIndex:self.recipeIndex];
    description.textColor = [UIColor blackColor];
    description.numberOfLines = 3;
    [scrollView addSubview:description];
    
    
    
    for (NSInteger i = 0; i < [RARecipes ingredientCountAtIndex:self.recipeIndex]; i++) {
        
        UILabel *ingredientType = [[UILabel alloc] initWithFrame:CGRectMake(10, height, self.view.frame.size.width, 25)];
        ingredientType.text = [RARecipes ingredientTypeAtIndex:i inRecipeAtIndex:self.recipeIndex];
        ingredientType.textColor = [UIColor blackColor];
        [scrollView addSubview:ingredientType];
        
        height +=25;
        
        UILabel *volume = [[UILabel alloc] initWithFrame:CGRectMake(10, height, self.view.frame.size.width, 25)];
        volume.text = [RARecipes ingredientVolumeAtIndex:i inRecipeAtIndex:self.recipeIndex];
        [scrollView addSubview:volume];
        
        height +=25;
    }
    
    UILabel * directions = [[UILabel alloc] initWithFrame:CGRectMake(10, height += 20,self.view.frame.size.width, 20)];
    directions.text = @"Directions";
    directions.textColor = [UIColor blackColor];
//    directions.font = [UIFontDescriptorTraitBold, 5];
    [scrollView addSubview:directions];
    
    for (NSInteger i = 0; i < [[RARecipes directionsAtIndex:self.recipeIndex] count]; i++) {
        
        UILabel *directions = [[UILabel alloc] initWithFrame:CGRectMake(10, height, self.view.frame.size.width, 275)];
        directions.text = [RARecipes directionsAtIndex:self.recipeIndex][i];
        directions.textColor = [UIColor blackColor];
        directions.numberOfLines = 14;
        
        [scrollView addSubview:directions];
        
        height += 225;
    }

    
    
    
    
    
    
    
    
    
    
    
    
}
    /*
    UITableView *detailView = [[UITableView alloc] initWithFrame:self.view.bounds];
    detailView.dataSource = self;
    
    [self.view addSubview:detailView];
    
}

//-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//    return 5;
//}
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    return [RARecipes descriptionAtIndex:self.recipeIndex];
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    NSSet *recipeInfo = [[RARecipes recipeAtIndex:NSIndexPath]; [RARecipes descriptionAtIndex:NSIndexPath]; [RARecipes ingredientTypeAtIndex:NSIndexPath inRecipeAtIndex:indexPath]; [RARecipes ingredientVolumeAtIndex:NSIndexPath inRecipeAtIndex:indexPath]; [RARecipes ingredientCountAtIndex:NSIndexPath]];
    
    return [recipeInfo.count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [UITableViewCell new];
    

    
    cell.textLabel.text = @"test";
    return cell;
}
     */
@end
