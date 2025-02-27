require 'json'

Pod::Spec.new do |s|
  package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

  s.name          = "RNFastImage"
  s.version       = package['version']
  s.summary       = package['description']
  s.authors       = { "mvn-quocnguyen-dn" => "quoc.nguyen@monstar-lab.com" }
  s.homepage      = "https://github.com/mvn-quocnguyen-dn/react-native-fast-image#readme"
  s.license       = "MIT"
  s.platforms     = { :ios => "8.0", :tvos => "9.0" }
  s.framework     = 'UIKit'
  s.requires_arc  = true
  s.source        = { :git => "https://github.com/mvn-quocnguyen-dn/react-native-fast-image.git", :tag => "v#{s.version}" }
  s.source_files  = "ios/**/*.{h,m}"

  s.dependency 'React-Core'
  s.dependency 'SDWebImage', '~> 5.17.0'
  s.dependency 'SDWebImageWebPCoder', '~> 0.13.0'
end
