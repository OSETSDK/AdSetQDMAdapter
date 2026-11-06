# AdSetQDMAdapter

佳投 M 渠道适配器，后端平台标识为 `tuiyi`，版本 `2.0.0.0`。

## 依赖与接入

适配器依赖 `OSETCoreAd >= 7.0.4.0` 和 `AdSetQDMAdSDK = 1.4.16`。
Core `7.0.4.0` 提供 `tuiyi` 运行时映射。通过 OSET Specs 安装，并保留公共源：

```ruby
source 'https://github.com/OSETSDK/Specs.git'
source 'https://cdn.cocoapods.org/'

platform :ios, '12.0'

target 'YourApp' do
  pod 'AdSetQDMAdapter', '2.0.0.0'
  pod 'OSETCoreAd', '7.0.4.0'
end
```

新项目执行 `pod install --repo-update`。已有项目保留锁文件，定向更新对应 Pod，
并核对依赖版本及 `SPEC REPOS`。

## 支持范围

| 广告格式 | 状态 |
| --- | --- |
| 开屏 Splash | 已有适配实现，使用宿主指定窗口 |
| 插屏 Interstitial | 已有适配实现；半屏与全屏由广告位决定 |
| 激励视频 Rewarded | 已有适配实现；真实奖励校验与完播分别处理 |
| Native 模板 | 已有适配实现；使用渠道返回的原视图 |
| NativeData 自渲染交互 | 未开放，Core 映射保持空值 |
| Banner / 独立 FullscreenVideo / Draw | 不支持 |

自渲染素材桥接实现保留在产物中，但尚无已确认的可逆解绑契约，不注册厂商曝光、点击，
不能作为可用的自渲染交互入口。

## 集成条件

适配器产物为静态 XCFramework，不内置 Core 或渠道 SDK。M 渠道 SDK 是动态
Framework，最终宿主需要正确嵌入和签名。Podspec 保留 `-ObjC`，让 Core 可以
按类名发现适配器。

适配器已完成三种架构的 Release 编译与静态切片、符号检查。发布前的独立本地路径
消费者已验证上述三个 Pod 与公共源 `AliyunLogProducer 4.3.3` 的 arm64 真机架构和
x86_64 模拟器链接、适配器类符号保留，以及动态 M SDK 和资源嵌入。

这些检查禁用签名，未运行真实广告初始化、展示、奖励、点击或关闭流程。
完整工程的 Apple Silicon 模拟器能力受第三方依赖配置限制；
`AliyunLogProducer 4.3.3` 官方规格排除 arm64 模拟器，本仓库不覆盖该设置。
