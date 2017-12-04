Pod::Spec.new do |s|
  s.name = 'FormValidator'
  s.version = '1.0.0'
  s.license = { :type => "MIT", :file => "LICENSE.md" }
  s.summary = 'A framework to validate inputs of textfields in a convenient way.'
  s.homepage = 'https://github.com/eberson/form-validator'
  s.authors = { 'Shagun Madhikarmi' => 'shagun@ustwo.com',
                'Aaron McTavish' => 'aamct@ustwo.com',
                'Eberson Oliveira' => 'eberson.oliveira@s2it.com.br' }
  s.source = { :git => 'https://github.com/eberson/form-validator.git', :tag => s.version }

  s.ios.deployment_target = '9.0'
  

  s.source_files = 'FormValidator/FormValidator/**/*.swift'
  s.ios.exclude_files = '**/*AppKit.swift'


  s.resource_bundles = { 'FormValidator' => 'FormValidator/FormValidator/Resources/**/*.strings' }

  s.frameworks = 'Foundation'
  s.ios.frameworks = 'UIKit'

  s.requires_arc = true
end
