#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint lebo_sender.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'lebo_sender'
  s.version          = '0.0.1'
  s.summary          = 'The SDK of the sending end of lebo.'
  s.description      = <<-DESC
The SDK of the sending end of lebo.
                       DESC
  s.homepage         = 'https://github.com/LiWenHui96/lebo_sender'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'LiWeNHuI' => 'sdgrlwh@163.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '9.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
