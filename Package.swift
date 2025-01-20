// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "GXUCImageGallery",
	platforms: [.iOS("13.0")],
	products: [
		.library(
			name: "GXUCImageGallery",
			targets: ["GXUCImageGalleryWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "3.0.0-beta.8")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXUCImageGallery-3.0.0-beta.8.xcframework.zip",
			checksum: "cfdb52057578f1a17ac89cbd15920e10d927dcc3acf3162b39c183e4c6f2c429"
		)
	]
)