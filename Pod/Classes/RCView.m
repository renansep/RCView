//
//  RCView.m
//  Pods
//
//  Created by Renan Cargnin on 1/7/16.
//
//

#import "RCView.h"

@interface RCView ()

@property (weak, nonatomic) UIView *rcContentView;

@end

@implementation RCView

- (instancetype)init {
    if (self = [super init]) {
        [self setFrame:self.rcContentView.bounds];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setupRCView];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self setupRCView];
    }
    return self;
}

- (void)setupRCView {
    if ([self class] == [RCView class]) {
        NSLog(@"You must subclass RCView. Don't use it directly ;)");
        return;
    }
    
    self.rcContentView = [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:self options:nil].firstObject;
    self.rcContentView.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:self.rcContentView];
    
    [self pinContentViewWithAttribute:NSLayoutAttributeTop];
    [self pinContentViewWithAttribute:NSLayoutAttributeBottom];
    [self pinContentViewWithAttribute:NSLayoutAttributeLeft];
    [self pinContentViewWithAttribute:NSLayoutAttributeRight];
}

- (void)pinContentViewWithAttribute:(NSLayoutAttribute)attribute {
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.rcContentView
                                                     attribute:attribute
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:attribute
                                                    multiplier:1
                                                      constant:0.0f]];
}

@end
