Pod::Spec.new do |s|
  s.name         = "GNGradientView"
  s.version      = "0.0.1"
  s.summary      = "UIView alpha gradient mask."

  s.description  = <<-DESC
                    UIView alpha gradient mask. Container category for UIView and UIGradientView.
                   DESC
  s.homepage     = "https://github.com/jakubknejzlik/GNGradientView"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Jakub Knejzlik" => "jakub.knejzlik@gmail.com" }
  s.source       = { :git => "https://github.com/jakubknejzlik/GNGradientView.git", :tag => "0.0.1" }
  s.source_files  = "GNGradientView/*.{h,m}"
  s.framework  = "UIKit"
  s.requires_arc = true
end
