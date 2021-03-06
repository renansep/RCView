# RCView

[![CI Status](http://img.shields.io/travis/renansep/RCView.svg?style=flat)](https://travis-ci.org/renansep/RCView)
[![Version](https://img.shields.io/cocoapods/v/RCView.svg?style=flat)](http://cocoapods.org/pods/RCView)
[![License](https://img.shields.io/cocoapods/l/RCView.svg?style=flat)](http://cocoapods.org/pods/RCView)
[![Platform](https://img.shields.io/cocoapods/p/RCView.svg?style=flat)](http://cocoapods.org/pods/RCView)

## Overview
Do you want to easily create UIView subclasses and initialize them via code, storyboards or XIBs?

Do you want to separate your logic into small components when you have THAT complex ViewController?

Do you want to reuse your component anywhere without caring about how to initialize it?

Do you want all of these things even working with Auto Layout?

RCView does it for you!

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

Now all you need to do is to create a subclass of RCView and a XIB file for your view.

## Usage via Interface Builder (IB)

Drag a View from the Object Library to you XIB / storyboard and assign your subclass in the View's Class property.

## Usage via code

If you're not using autolayout and want to set a frame to your view:
```ruby
[[MyViewSubclass alloc] initWithFrame:frame];
```

If you're using Auto Layout in your View's superview you can simply call:
```ruby
[[MyViewSubclass alloc] init];
```
And add the appropriate constraints later.

If you want to provide custom initializers for your view remember to call super initializers in their implementations.

## Requirements

Your view's XIB file must have the same name of your view subclass.

If you need to create outlets, once in your XIB, assign the subclass to the File's Owner Class property (do not assign your subclass to the View's Class property).

![](filesOwnerHelp1.png?raw=true "Files Owner Help")

![](filesOwnerHelp2.png?raw=true "Files Owner Help")

## Installation

RCView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "RCView"
```

## Author

Renan Cargnin (renansep), renansep93@gmail.com

## License

RCView is available under the MIT license. See the LICENSE file for more info.
