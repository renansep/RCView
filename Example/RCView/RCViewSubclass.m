//
//  RCViewSubclass.m
//  RCView
//
//  Created by Renan Cargnin on 1/7/16.
//  Copyright © 2016 renansep. All rights reserved.
//

#import "RCViewSubclass.h"

@implementation RCViewSubclass

- (RCViewSubclass *)initWithLabelText:(NSString *)labelText {
    if (self = [super init]) {
        _label.text = labelText;
    }
    return self;
}

@end
