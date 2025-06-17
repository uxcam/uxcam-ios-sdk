Pod::Spec.new do |s|
  s.name                 = 'UXCam'
  s.version              = '3.6.26'
  
  s.summary             = "UXCam SDK for iOS applications"
  s.description         = <<-DESC
                  Visit https://uxcam.com to get a key.
                  This is version #{s.version} of the SDK - see CHANGELOG for details
                  DESC
  s.homepage             = "https://uxcam.com/"
  s.license              = {
    'type' => 'Copyright',
    'text' => 'Copyright (c) 2013-2025, UXCam Inc. All rights reserved.'
  }

  s.author               = { 'UXCam' => 'admin@uxcam.com' }
  s.social_media_url     = "https://www.twitter.com/uxcam"
  s.documentation_url     = 'https://developer.uxcam.com/docs'
  
  s.platform             = :ios, 12.0

  s.source                 = { :http => "https://raw.githubusercontent.com/uxcam/uxcam-ios-sdk/#{s.version}/UXCam.xcframework.zip" }
  s.vendored_frameworks = 'UXCam.xcframework'

  s.static_framework     = true
  s.libraries             = 'z', 'iconv', 'c++'
  s.frameworks             = 'AVFoundation', 'CoreGraphics', 'CoreMedia', 'CoreVideo', 'CoreTelephony', 'MobileCoreServices', 'QuartzCore', 'SystemConfiguration', 'Security', 'WebKit'
  s.xcconfig               = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/UXCam"' }
  s.requires_arc        = true
end
