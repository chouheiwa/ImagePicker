Pod::Spec.new do |s|
  s.name             = "CHWImagePicker"
  s.summary          = "Reinventing the way ImagePicker works."
  s.version          = "3.1.2"
  s.homepage         = "https://github.com/hyperoslo/ImagePicker"
  s.license          = 'MIT'
  s.author           = { "Hyper Interaktiv AS" => "ios@hyper.no", "chouheiwa" => "849131492@qq.com" }
  s.source           = { :git => "https://github.com/chouheiwa/ImagePicker.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/hyperoslo'
  s.platform     = :ios, '9.0'
  s.source_files = 'Source/**/*'
  s.resource_bundles = { 'ImagePicker' => ['Images/*.{png}'] }
  s.frameworks = 'AVFoundation'
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '5' }
end
