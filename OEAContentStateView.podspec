#
# Be sure to run `pod lib lint OEAContentStateView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'OEAContentStateView'
  s.version          = '0.1.0'
  s.summary          = 'A short description of OEAContentStateView.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/OEA/OEAContentStateView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'OEA' => 'omeremreaslan@gmail.com' }
  s.source           = { :git => 'https://github.com/OEA/OEAContentStateView.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/OEASLAN'

  s.ios.deployment_target = '9.0'

  s.source_files = 'OEAContentStateView/Classes/**/*'
end
