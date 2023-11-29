Pod::Spec.new do |spec|
  spec.name         = "PreviewsSupport"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of PreviewsSupport."
  spec.description  = <<-DESC
A short description of PreviewsSupport.
                   DESC
  spec.homepage     = "https://github.com/EmergeTools/SnapshotPreviews-iOS"
  spec.license      = "MIT"
  spec.author             = "banjun"
  spec.platform     = :ios, "15.0"
  spec.source       = { :git => "https://github.com/EmergeTools/SnapshotPreviews-iOS", :tag => "#{spec.version}" }
  spec.vendored_framework = "PreviewsSupport/PreviewsSupport.xcframework"
  spec.xcconfig = { :ARCHS => '$(ARCHS_STANDARD) arm64e' }
end
