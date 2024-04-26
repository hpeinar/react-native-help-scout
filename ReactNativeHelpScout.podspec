require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = 'ReactNativeHelpScout'
  s.version      = package['version']
  s.summary      = package['description']

  s.authors      = { 'Dimitar Nestorov': 'opensource@dimitarnestorov.com' }
  s.homepage     = package['homepage']
  s.license      = package['license']
  s.platform     = :ios, '11.0'

  s.module_name  = 'ReactNativeHelpScout'

  s.source       = { :git => 'https://github.com/codemotionapps/react-native-help-scout.git', :tag => "#{s.version}" }
  s.source_files = "ios/**/*.{h,m}"

  s.dependency 'React'
  s.dependency 'Beacon', '~> 3.0.0'

  s.frameworks = 'UIKit'

  s.static_framework = true
end
