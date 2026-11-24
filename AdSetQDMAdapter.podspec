Pod::Spec.new do |s|
  s.name = 'AdSetQDMAdapter'
  s.version = '2.0.1.0'
  s.summary = '佳投渠道适配器'
  s.description = '对接 AdSetQDMAdSDK 1.4.16；自渲染交互复用待厂商解绑接口确认。'
  s.homepage = 'https://github.com/OSETSDK/AdSetQDMAdapter'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.author = { 'shenshi' => 'yaohaofei@shenshiads.com' }
  s.source = { :git => 'https://github.com/OSETSDK/AdSetQDMAdapter.git', :tag => s.version.to_s }
  s.platform = :ios, '12.0'
  s.vendored_frameworks = 'AdSetQDMAdapter.xcframework'
  s.frameworks = 'Foundation', 'UIKit'
  # 模板信息流需要 Core 的绑定接口和视图回调转发。
  s.dependency 'OSETCoreAd', '>= 7.0.4.1'
  s.dependency 'AdSetQDMAdSDK', '= 1.4.16'
  s.user_target_xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }
end
