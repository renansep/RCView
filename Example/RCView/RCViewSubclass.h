//
//  RCViewSubclass.h
//  RCView
//
//  Created by Renan Cargnin on 1/7/16.
//  Copyright © 2016 renansep. All rights reserved.
//

#import "RCView.h"

@interface RCViewSubclass : RCView

@property (weak, nonatomic) IBOutlet UILabel *label;

- (RCViewSubclass *)initWithLabelText:(NSString *)labelText;

@end
