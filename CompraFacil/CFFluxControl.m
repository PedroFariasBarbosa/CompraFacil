//
//  CFFluxControl.m
//  CompraFacil
//
//  Created by Humberto Mendes on 24/07/13.
//  Copyright (c) 2013 Pedro Farias Barbosa. All rights reserved.
//

#import "CFFluxControl.h"

@implementation CFFluxControl

-(void) startActivity:(UIViewController*)uiSelf uiTarget:(UIViewController*)uiTarget{
    [uiSelf.navigationController pushViewController:uiTarget animated:YES];
    [uiTarget release];
}
@end
