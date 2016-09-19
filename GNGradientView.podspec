#
# Be sure to run `pod lib lint GNGradientView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name         = "GNGradientView"
  s.version      = "1.0.0"
  s.summary      = "UIView alpha gradient mask."

  s.description  = <<-DESC
                      UIView with alpha gradient mask. UIView extension and subclass.
                    DESC
  s.homepage     = "https://github.com/jakubknejzlik/GNGradientView"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Jakub Knejzlik" => "jakub.knejzlik@gmail.com" }
  s.source           = { :git => 'https://github.com/jakubknejzlik/GNGradientView.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'GNGradientView/Classes/**/*'
  
  s.frameworks = 'UIKit'
end
