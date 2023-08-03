// swift-tools-version: 5.7
import PackageDescription

let package = Package(
	name: "GXUCImageGallery",
	platforms: [.iOS("12.0")],
	products: [
		.library(
			name: "GXUCImageGallery",
			targets: ["GXUCImageGalleryWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "1.1.0-rc.3"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXDataLayer.git", exact: "1.1.0-rc.3"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXFoundation.git", exact: "1.1.0-rc.3"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXObjectsModel.git", exact: "1.1.0-rc.3")
	],
	targets: [
		.target(name: "GXUCImageGalleryWrapper",
				dependencies: [
					"GXUCImageGallery",
					.product(name: "GXCoreUI", package: "GXCoreUI", condition: .when(platforms: [.iOS])),
					.product(name: "GXDataLayer", package: "GXDataLayer", condition: .when(platforms: [.iOS])),
					.product(name: "GXFoundation", package: "GXFoundation", condition: .when(platforms: [.iOS])),
					.product(name: "GXObjectsModel", package: "GXObjectsModel", condition: .when(platforms: [.iOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXUCImageGallery",
			url: "https://pkgs.genexus.dev/iOS/preview/GXUCImageGallery-1.1.0-rc.3.xcframework.zip",
			checksum: "6bb5fa8be29aa38dc0a71ee8f9b06bc976530ca1a37d111647443f5b29f02358"
		)
	]
)