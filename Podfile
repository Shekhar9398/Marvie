platform :ios, '15.0'

target 'Marvie' do
  use_frameworks!

  # Pods for Marvie
  pod 'FirebaseCore'
  pod 'FirebaseAuth'
  pod 'FirebaseFirestore'

end

# Ensure all pods use iOS 15.0 as the minimum deployment target
post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '15.0'
    end
  end
end
