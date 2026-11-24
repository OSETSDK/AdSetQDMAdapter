# AdSetQDMAdapter

佳投 M 渠道 iOS 适配器，OSET 后端渠道值为 `tuiyi`。

## 接入

应用最低支持 iOS 12。适配器依赖 `OSETCoreAd >= 7.0.4.1` 和 `AdSetQDMAdSDK = 1.4.16`。

```ruby
pod 'AdSetQDMAdapter', '2.0.1.0'
```

提供开屏、插屏、激励视频、Banner、模板信息流和自渲染信息流适配。已注册的自渲染素材解绑后需重新加载。

适配器为静态 XCFramework，支持 iOS 真机 arm64 和模拟器 arm64、x86_64。佳投 SDK 为动态 Framework，由应用嵌入和签名。
