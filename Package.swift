// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GLib",
    products: [
	.library(name: "GLib", targets: ["GLib"]),
    ],
    dependencies: [
        .package(url: "https://github.com/rhx/CGLib.git", .branch("master"))
    ],
    targets: [
        .target(name: "GLib", dependencies: []),
        .testTarget(name: "GLibTests", dependencies: ["GLib"]),
    ]
)
