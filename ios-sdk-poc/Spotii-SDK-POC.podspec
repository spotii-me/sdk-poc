# require 'json'

# # # Returns the version number for a package.json file
# pkg_version = lambda do |dir_from_root = '', version = 'version'|
#   path = File.join(__dir__, dir_from_root, 'package.json')
#   JSON.parse(File.read(path))[version]
# end

# # # Let the main package.json decide the version number for the pod
# # # gitdawg_version = pkg_version.call
# # # Use the same RN version that the JS tools use
# react_native_version = pkg_version.call('node_modules/react-native')
react_native_version = "0.71.3"

current_file_dir = File.dirname(__FILE__)

# folly_compiler_flags = '-DFOLLY_NO_CONFIG -DFOLLY_MOBILE=1 -DFOLLY_USE_LIBCPP=1 -Wno-comma -Wno-shorten-64-to-32'

Pod::Spec.new do |s|
  s.name         = "Spotii-SDK-POC"
  s.version      = "1.0"
  s.summary      = "Spotii-SDK-POC"
  s.description  = "Spotii-SDK-POC react native SDK"
  s.homepage     = "https://github.com/VKMDGOAT"
  
  s.license      = "MIT"
  s.author       = { "Vishal Krishnan" => "vkmd98@gmail.com" }
  s.platform     = :ios, "14.0"
  s.source       =  { :git => 'https://github.com/spotii-me/sdk-poc.git' }
  s.source_files = "ios/**/*.{swift,h,m}"
#   s.resources      = "../*.bundle"
  s.preserve_paths = "ios/**/*"

  s.requires_arc = true
  s.swift_version= '5.0'

#   s.compiler_flags  = folly_compiler_flags

  Dir.each_child(File.join(current_file_dir, 'Pods/Local Podspecs')) do |podspec_name|
    podspec_split_name = podspec_name.split(/\./)
    # if Dir.exist?(pod_name) and not pod_name.include? "Pod"
    s.dependency podspec_split_name[0]
    # end
  end

  # Add dependencies here  ! DO NOT REMOVE COMMENT
  # s.dependency 'boost'
  # s.dependency 'DoubleConversion'
  # s.dependency 'FBLazyVector'
  # s.dependency 'FBReactNativeSpec'
  # s.dependency 'glog'
  # s.dependency 'hermes-engine'
  # s.dependency 'RCT-Folly'
  # s.dependency 'RCTRequired'
  # s.dependency 'RCTTypeSafety'
  # s.dependency 'React'
  # s.dependency 'React-callinvoker'
  # s.dependency 'React-Codegen'
  # s.dependency 'React-Core'
  # s.dependency 'React-CoreModules'
  # s.dependency 'React-cxxreact'
  # s.dependency 'React-hermes'
  # s.dependency 'React-jsi'
  # s.dependency 'React-jsiexecutor'
  # s.dependency 'React-jsinspector'
  # s.dependency 'React-logger'
  # s.dependency 'React-perflogger'
  # s.dependency 'React-RCTActionSheet'
  # s.dependency 'React-RCTAnimation'
  # s.dependency 'React-RCTAppDelegate'
  # s.dependency 'React-RCTBlob'
  # s.dependency 'React-RCTImage'
  # s.dependency 'React-RCTLinking'
  # s.dependency 'React-RCTNetwork'
  # s.dependency 'React-RCTSettings'
  # s.dependency 'React-RCTText'
  # s.dependency 'React-RCTVibration'
  # s.dependency 'React-runtimeexecutor'
  # s.dependency 'ReactCommon'
  # s.dependency 'Yoga'

end
