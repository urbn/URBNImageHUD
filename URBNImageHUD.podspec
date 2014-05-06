
Pod::Spec.new do |s|

  s.name         = "URBNImageHUD"
  s.version      = "0.0.1"
  s.summary      = "This is a simple hud which does one thing… It rotates an image to show indeterminant progress."

  s.description  = <<-DESC
				   # URBNImageHUD

				   This is a simple hud which does one thing… It rotates an image to show indeterminant progress.

				   Well it does a few other things, you can add text, show a custom alert image, and set some colors.

				   This hud was born out of the ashes of [SVProgressHUD](https://github.com/samvermette/SVProgressHUD), but with much of the original functionality swept away. So if you like the ease of use and clean code of that project, but need to rotate a custom image, you are in the right place.

				   (If you must ask, we did try to modify SVProgressHUD so that we could push our changes back, but the changes were so large, that it seemed best to make a clean break.)
                   DESC

  s.homepage  	= 'http://www.urbn.com'
  s.license      = 'MIT'
  s.author    	= 'URBN Application Engineering Team'

  s.source       = { :git => "https://github.com/urbn/URBNImageHUD.git", :tag => s.version.to_s }

  s.platform  	= :ios, '7.0'
  s.requires_arc = true

  s.source_files  = "Classes", "Classes/**/*.{h,m}"
  s.exclude_files = "Classes/Exclude"
  s.frameworks = 'UIKit', 'Foundation', 'QuartzCore'

end
