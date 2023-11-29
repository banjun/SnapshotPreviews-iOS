Pod::Spec.new do |spec|
  spec.name         = "SnapshotPreviewsCore"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of SnapshotPreviewsCore."
  spec.description  = <<-DESC
A short description of SnapshotPreviewsCore.
                   DESC
  spec.homepage     = "https://github.com/EmergeTools/SnapshotPreviews-iOS"
  spec.license      = "MIT"
  spec.author             = "banjun"
  spec.platform     = :ios, "15.0"
  spec.source       = { :git => "https://github.com/EmergeTools/SnapshotPreviews-iOS", :tag => "#{spec.version}" }
  spec.source_files  = "Sources/SnapshotPreviewsCore/**/*.{h,m,swift}"
  spec.xcconfig = { :ARCHS => '$(ARCHS_STANDARD) arm64e', :FRAMEWORK_SEARCH_PATHS => '$(inherited) "${PODS_XCFRAMEWORKS_BUILD_DIR}/PreviewsSupport"' }
end
