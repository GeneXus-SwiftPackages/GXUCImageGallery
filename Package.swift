// swift-tools-version: 5.9
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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "2.0.0-rc.34")
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
			url: "https://pkgs.genexus.dev/iOS/preview/GXUCImageGallery-2.0.0-rc.34.xcframework.zip",
			checksum: "b521a4e7ed05753d130c087d7fac835212a7dbcae9b1fed01114fb8ed2dc2010"
		)
	]
)