Pod::Spec.new do |s|
  s.name         = "ZXRNav"
  s.version      = "0.0.1"
  s.summary      = " Custome navView"
  s.description  = <<-DESC
                   custom nav for BaseViewController
                   DESC
  s.homepage     = "https://github.com/aidlpy/ZXRNav.git"
  s.license      = "MIT"
  s.author             = { "Albert" => "admin@aidlpy.com" }
  s.requires_arc = true
  s.source       = { :git => "https://github.com/aidlpy/ZXRNav.git", :tag => "0.0.1" }
  s.source_files  = "ZXRNav/*.{h,m}"
  s.ios.deployment_target = '8.0'
  s.frameworks = "Foundation", "UIKit"
  s.dependency "Masonry"  #工程依赖的第三方库

end