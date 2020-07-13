Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '12.0'
s.name = "together-button"
s.summary = "together-button lets a user call help"
s.requires_arc = true

# 2
s.version = "0.2.1"

# 3
s.license = { :type => "MIT", :file => "LICENSE" }

# 4 - Replace with your name and e-mail address
s.author = { "Otavio Baziewicz Filho" => "otavio.baziewicz.filho@gmail.com" }

# 5 - Replace this URL with your own GitHub page's URL (from the address bar)
s.homepage = "https://github.com/together-project/together-button"

# 6 - Replace this URL with your own Git URL from "Quick Setup"
s.source = { :git => "https://github.com/together-project/together-button.git",
             :tag => "#{s.version}" }

# 7
s.framework = "UIKit"

# 8
s.source_files = "together-button/**/*.{swift}"

# 9
s.resources = "together-button/**/*.{png,jpeg,jpg,storyboard,xib,xcassets}"

s.resource_bundles = {
	'together-button' => [
		'together-button/**/*.{png,jpeg,jpg,storyboard,xib,xcassets}'
	]
}

# 10
s.swift_version = "4.2"

end
