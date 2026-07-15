// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "GXUCImageGallery",
	platforms: [.iOS("15.0")],
	products: [
		.library(
			name: "GXUCImageGallery",
			targets: ["GXUCImageGalleryWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "4.2.0-rc.34")
	],
	targets: [
		.target(name: "GXUCImageGalleryWrapper",
				dependencies: [
					"GXUCImageGallery",
					.product(name: "GXCoreUI", package: "GXCoreUI", condition: .when(platforms: [.iOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXUCImageGallery",
			url: "https://pkgs.genexus.dev/iOS/preview/GXUCImageGallery-4.2.0-rc.34.xcframework.zip",
			checksum: "beafacdf97ac69caf340628615e819f30afdd76ecb52ec53f9b5fe7a6bc6a7e9"
		)
	]
)