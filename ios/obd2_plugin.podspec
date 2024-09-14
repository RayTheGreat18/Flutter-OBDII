#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint obd2_plugin.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'obd2_plugin'
  s.version          = '0.0.1'
  s.summary          = 'A Flutter plugin for connecting to ECU cars via the OBD port & ELM327 dongle.'
  s.description      = <<-DESC
A Flutter plugin for connecting to ECU cars via the OBD port & ELM327 dongle.
                       DESC
  s.homepage         = 'http://your_project_homepage.com'
  s.license          = { :type => 'MIT', :file => '../LICENSE' }
  s.author           = { 'Your Name' => 'your_email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '12.0'

  # Flutter.framework does not contain an i386 slice.
  s.pod_target_xcconfig = { 
    'DEFINES_MODULE' => 'YES', 
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386 arm64' 
  }
  s.swift_version = '5.7'
end
