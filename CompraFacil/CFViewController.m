//
//  CFViewController.m
//  CompraFacil
//
//  Created by Pedro Farias Barbosa on 13/07/13.
//  Copyright (c) 2013 Pedro Farias Barbosa. All rights reserved.
//

#import "CFViewController.h"
#import "CFMenuController.h"

@interface CFViewController ()

@end

@implementation CFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) viewWillAppear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}
- (void)dealloc {
    [super dealloc];
}
- (IBAction)btnBarSupermercados:(id)sender {
}

- (IBAction)btnBarProdutos:(id)sender {
}

- (IBAction)btnBarMenu:(id)sender {
    
    CFMenuController *menuController = [[CFMenuController alloc] init];
    [self.navigationController pushViewController:menuController animated:YES];
    [menuController release];
}
@end
