#
# Be sure to run `pod lib lint DocCheckAppLoginSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DocCheckAppLoginSDK'
  s.version          = '0.1.3'
  s.summary          = 'Official DocChecks SDK in Swift to integrate DocCheck App Login'
  s.description      = 'The Official DocCheck SDK offers the option for an easy integration of the App Login for customers with a valid contract.'

  s.homepage         = 'https://www.doccheck.com'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'DocCheck Community GmbH' => 'industry@doccheck.com' }
  s.source           = { :git => 'https://github.com/antwerpes/dc_app_login_sdk_ios.git', :tag => s.version.to_s }
  
  s.ios.deployment_target = '12.0'
  s.swift_version = ['5.0', '5.1', '5.2', '5.3']
  s.source_files = 'Sources/DocCheckAppLoginSDK/Classes/**/*'
  s.frameworks = 'UIKit', 'WebKit'

  s.resource_bundles = {
    'DocCheckAppLoginSDK' => ['Sources/DocCheckAppLoginSDK/Assets/*.xcassets']
  }

end
