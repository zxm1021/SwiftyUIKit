
Pod::Spec.new do |s|
  s.name             = 'SwiftyUIKit'
  s.version          = '0.1.0'
  s.summary          = 'With Swifty UIKit, using UIKit becomes as easy as SwiftUI'
  s.homepage         = 'https://github.com/zxm1021/SwiftyUIKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zhangxiuming' => 'morenotepad@163.com' }
  s.source           = { :git => "https://github.com/zxm1021/SwiftyUIKit.git", :tag => s.version}
  s.swift_versions   = ['5.0']
  s.ios.deployment_target = '14.0'
  
  s.source_files = 'SwiftyUIKit/Sources/**/*'
  
end
