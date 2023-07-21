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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "1.0.0-beta.20230721123914"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXDataLayer.git", exact: "1.0.0-beta.20230721123914"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXFoundation.git", exact: "1.0.0-beta.20230721123914"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXObjectsModel.git", exact: "1.0.0-beta.20230721123914")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXUCImageGallery-1.0.0-beta.20230721123914.xcframework.zip",
			checksum: "2cda18a89b3e8b6ec8f618bbbce641d921b7901c671ea88ffc0c24ec80fa92ea"
		)
	]
)