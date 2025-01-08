require 'json'

package = JSON.parse(File.read(File.join(__dir__, '../package.json')))

Pod::Spec.new do |s|
  s.name         = "react-native-splash-background"
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']
  s.authors      = { "Robert Elliott" => "rob@bindo.app" }
  s.homepage     = "https://github.com/greenafrican/react-native-splash-background"
  s.source       = { :git => "https://github.com/greenafrican/react-native-splash-background.git", :tag => s.version.to_s }
  s.source_files  = "ios/**/*.{h,m}"
  s.platform     = :ios, "10.0"
  s.requires_arc = true
  s.dependency "React"
end
