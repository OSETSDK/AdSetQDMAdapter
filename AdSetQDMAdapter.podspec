Pod::Spec.new do |s|
  s.name = 'AdSetQDMAdapter'
  s.version = '2.0.0.0'
  s.summary = '佳投渠道适配器'
  s.description = '对接 AdSetQDMAdSDK 1.4.16；自渲染交互复用待厂商解绑接口确认。'
  s.homepage = 'https://github.com/OSETSDK/AdSetQDMAdapter'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.author = { 'shenshi' => 'yaohaofei@shenshiads.com' }
  # 渠道交付仓库；Specs 发布前必须满足下方 Core 版本依赖。
  s.source = { :git => 'https://github.com/OSETSDK/AdSetQDMAdapter.git', :tag => s.version.to_s }
  s.platform = :ios, '12.0'
  s.vendored_frameworks = 'AdSetQDMAdapter.xcframework'
  s.frameworks = 'Foundation', 'UIKit'
  # 当前仅验证本分支包含 tuiyi 映射的 Core；发布前须对齐真正包含映射的新 Core 版本。
  s.dependency 'OSETCoreAd', '>= 7.0.4.0'
  s.dependency 'AdSetQDMAdSDK', '= 1.4.16'
  s.user_target_xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }
end
