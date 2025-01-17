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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "3.0.0-beta.4")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXUCImageGallery-3.0.0-beta.4.xcframework.zip",
			checksum: "371b2e444895da0e9da9ad3524d796ac3901599adf7095c05d16447fd755a9ca"
		)
	]
)