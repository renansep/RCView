//
//  RCView.m
//  Pods
//
//  Created by Renan Cargnin on 1/7/16.
//
//

#import "RCView.h"

@interface RCView ()

@property (weak, nonatomic) UIView *contentView;

@end

@implementation RCView

- (instancetype)init {
    if (self = [super init]) {
        [self setFrame:_contentView.bounds];
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
    
    self.contentView = [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:self options:nil].firstObject;
    _contentView.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:_contentView];
    
    [self pinView:_contentView attribute:NSLayoutAttributeTop];
    [self pinView:_contentView attribute:NSLayoutAttributeBottom];
    [self pinView:_contentView attribute:NSLayoutAttributeLeft];
    [self pinView:_contentView attribute:NSLayoutAttributeRight];
}

- (void)pinView:(UIView *)view attribute:(NSLayoutAttribute)attribute {
    [self addConstraint:[NSLayoutConstraint constraintWithItem:view
                                                     attribute:attribute
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:attribute
                                                    multiplier:1
                                                      constant:0.0f]];
}

@end
