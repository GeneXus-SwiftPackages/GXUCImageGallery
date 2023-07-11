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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "1.0.0-beta.20230711133237"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXDataLayer.git", exact: "1.0.0-beta.20230711133237"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXFoundation.git", exact: "1.0.0-beta.20230711133237"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXObjectsModel.git", exact: "1.0.0-beta.20230711133237")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXUCImageGallery-1.0.0-beta.20230711133237.xcframework.zip",
			checksum: "0387527129c397d74ece9e3820eaa518451c48e56024023fe174db623a00fbf2"
		)
	]
)