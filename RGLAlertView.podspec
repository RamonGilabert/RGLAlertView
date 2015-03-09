Pod::Spec.new do |s|
  s.name = "RGLAlertView"
  s.version = "1.0.0"
  s.summary = "Custom alert views"
  s.homepage = "https://github.com/RamonGilabert/RGLAlertView"
  s.license = {
    :type => 'MIT',
    :file => 'Resources/LICENSE.md'
  }
  s.author = { "Ramon Gilabert" => "contact@ramongilabert.com" }
  s.social_media_url = "http://twitter.com/RamonGilabert"
  s.platform = :ios, '8.0'
  s.source = {
    :git => 'https://github.com/RamonGilabert/RGLAlertView.git',
    :tag => s.version.to_s
  }
  s.source_files = '*.{h,m}'
  s.frameworks = 'Foundation'
  s.requires_arc = true

end
