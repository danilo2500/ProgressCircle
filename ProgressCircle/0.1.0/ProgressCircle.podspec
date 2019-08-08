#
# Be sure to run `pod lib lint ProgressCircle.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ProgressCircle'
  s.version          = '0.1.0'
  s.summary          = 'A circular progress bar.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/danilo2500/ProgressCircle'
  s.screenshots     = 'https://i.ibb.co/Y7h6Bj9/Captura-de-Tela-2019-08-08-s-00-03-47.png'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'danilo2500' => 'danilo.2500@gmail.com' }
  s.source           = { :git => 'https://github.com/danilo2500/ProgressCircle.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'ProgressCircle/Classes/**/*'
  
  # s.resource_bundles = {
  #   'ProgressCircle' => ['ProgressCircle/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.swift_versions = '5.0'
end
