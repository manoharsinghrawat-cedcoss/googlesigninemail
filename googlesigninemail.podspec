
Pod::Spec.new do |spec|

  spec.name         = "googlesigninemail"
  spec.version      = "1.0.1"
  spec.summary      = "GIDSignInPod helps you enable Google Sign In"
  spec.homepage     = "https://github.com/manoharsinghrawat-cedcoss/googlesigninemail"
  spec.platform = :ios
  spec.ios.deployment_target = '9.0'

spec.license      = { :type => "MIT", :file => "LICENSE" }

  spec.author             = { "Manohar Singh Rawat" => "manoharsinghrawat@cedcoss.com" }

  spec.source       = { :git => "https://github.com/manoharsinghrawat-cedcoss/googlesigninemail.git", :tag => "#{spec.version}" }
  spec.static_framework = true
 spec.framework = "UIKit"
 spec.dependency 'Firebase/Core'
 spec.dependency 'Firebase/Auth'
 spec.dependency 'GoogleSignIn'
  spec.source_files  = "GIDSignInPod/**/*.{h,m,swift}"
   spec.requires_arc = true
   spec.swift_version = "5.0"

end
