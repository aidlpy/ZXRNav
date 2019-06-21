Pod::Spec.new do |s|
  s.name         = "ZXRNav"
  s.version      = "0.0.1"
  s.summary      = " custom nav for BaseViewController"
  s.description  = <<-DESC
                   custom nav for BaseViewController
                   DESC
  s.homepage     = "https://github.com/aidlpy/ZXRNav.git"
  s.license      = "MIT"
  s.author             = { "Albert" => "admin@aidlpy.com" }
  s.requires_arc = true
  s.source       = { :git => "https://github.com/aidlpy/ZXRNav.git", :tag => "0.0.1" }
  s.source_files  = "ZXRNav/*.{h,m}"
  s.public_header_files = 'ZXRNav/*.{h}'
  s.prefix_header_contents = pch_AF
  s.ios.deployment_target = '8.0'
  s.watchos.deployment_target = '2.0'
  s.frameworks = "Foundation", "UIKit"

end