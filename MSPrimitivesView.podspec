
Pod::Spec.new do |s|
  s.name             = "MSPrimitivesView"
  s.version          = "0.1.0"
  s.summary          = "Draw primitives like a Boss by adding specify MSPrimitives to UIView!"
  s.description      = <<-DESC
                       Pack of specifies UIView subclasses for drawing primitives.

                        You can
                       * create primitives from Storyboard!
                       * create primitives from code
                       * layout MSPrimitiveView like any other UIView!
                       DESC
  s.homepage         = "https://github.com/WezSieTato/MSPrimitivesView"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "WezSieTato" => "le0n.uo@gmail.com" }
  s.source           = { :git => "https://github.com/WezSieTato/MSPrimitivesView.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'MSPrimitivesView' => ['Pod/Assets/*.png']
  }

  s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'

end
