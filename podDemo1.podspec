#
# Be sure to run `pod lib lint podDemo1.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'podDemo1'
  s.version          = '0.1.0'
  s.summary          = 'A short description of podDemo1.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/echoZZJ/podDemo1'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'echoZZJ' => 'zhangzijie.1@bytedance.com' }
  s.source           = { :git => 'https://github.com/echoZZJ/podDemo1.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
#  包含.a静态库必备
#  s.vendored_libraries = 'podDemo1/Classes/*.a'
  s.source_files = 'podDemo1/Classes/**/*'
  s.default_subspec = 'MMATracking'

  s.subspec 'MMATracking' do |mma|
      mma.public_header_files = 'podDemo1/Classes/Library/*.h'
      mma.vendored_libraries = 'podDemo1/Classes/Library/*.a'
      mma.frameworks = 'SystemConfiguration','AdSupport','CoreTelephony','CoreLocation'
      mma.libraries = 'xml2.2'
      mma.xcconfig = {'OTHER_LDFLAGS' => '-ObjC -lxml2 -all_load'}

  end
  # s.resource_bundles = {
  #   'podDemo1' => ['podDemo1/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
