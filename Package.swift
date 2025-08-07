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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "3.2.0-rc.11")
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
			url: "https://pkgs.genexus.dev/iOS/preview/GXUCImageGallery-3.2.0-rc.11.xcframework.zip",
			checksum: "6da515199e3f8fec6f5f4bd3801042fc690fa19759dfbafbc68b311734fda885"
		)
	]
)