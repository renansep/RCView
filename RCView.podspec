#
# Be sure to run `pod lib lint RCView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "RCView"
  s.version          = "0.1.0"
  s.summary          = "RCView is a simple reusable UIView."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
Do you want to easily create UIView subclasses and initialize them via code, storyboards or XIBs?
Do you want to separate your logic into small components when you have THAT complex ViewController?
Do you want to reuse your component anywhere without caring about how to initialize it?
Do you want all of these things even working with Auto Layout?
RCView does it for you!
                       DESC

  s.homepage         = "https://github.com/renansep/RCView"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Renan Cargnin" => "renansep93@gmail.com" }
  s.source           = { :git => "https://github.com/renansep/RCView.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/renansep93'

  s.platform     = :ios, '6.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'RCView' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
