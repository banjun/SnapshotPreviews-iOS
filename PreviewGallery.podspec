Pod::Spec.new do |spec|
  spec.name         = "PreviewGallery"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of PreviewGallery."
  spec.description  = <<-DESC
A short description of PreviewGallery.
                   DESC
  spec.homepage     = "https://github.com/EmergeTools/SnapshotPreviews-iOS"
  spec.license      = "MIT"
  spec.author             = "banjun"
  spec.platform     = :ios, "15.0"
  spec.source       = { :git => "https://github.com/EmergeTools/SnapshotPreviews-iOS", :tag => "#{spec.version}" }
  spec.source_files  = "Sources/PreviewGallery/**/*.swift"
  spec.xcconfig = { :ARCHS => '$(ARCHS_STANDARD) arm64e', :FRAMEWORK_SEARCH_PATHS => '$(inherited) "${PODS_CONFIGURATION_BUILD_DIR}/SnapshotPreviewsCore"' }
end
