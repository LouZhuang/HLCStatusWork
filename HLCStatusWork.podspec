

Pod::Spec.new do |s|

  s.name         = "HLCStatusWork"
  s.version      = "1.0.1"
  s.summary      = "a   status flag"
  s.homepage     = "https://github.com/LouZhuang/HLCStatusWork"
  s.license      = "MIT"
  s.author             = { "hulni" => "3283180700@qq.com" }
  s.platform     = :ios
  s.source       = { :git => "https://github.com/LouZhuang/HLCStatusWork.git", :tag => "v#{s.version}" }
  s.source_files  = "HLCStatus/*.{h,m}"
  s.resources = "HLCStatus/**"
  s.framework  = "UIKit"
  s.requires_arc = true

end
