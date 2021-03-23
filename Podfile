#platform :ios, '12.0'

target 'GIDSignInPod' do
    pod 'Firebase/Core'
    pod 'Firebase/Auth'
    pod 'GoogleSignIn', :modular_headers => true

end
post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings.delete 'IPHONEOS_DEPLOYMENT_TARGET'
    end
  end
end