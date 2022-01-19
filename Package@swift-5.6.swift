// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "GLib",
    products: [ .library(name: "GLib", targets: ["GLib"]) ],
    dependencies: [
        .package(url: "https://github.com/rhx/gir2swift.git", branch: "development"),
	.package(url: "https://github.com/apple/swift-docc-plugin", branch: "main"),
    ],
    targets: [
        .systemLibrary(name: "CGLib", pkgConfig: "gio-unix-2.0",
            providers: [
                .brew(["glib", "glib-networking", "gobject-introspection"]),
                .apt(["libglib2.0-dev", "glib-networking", "gobject-introspection", "libgirepository1.0-dev"])
            ]),
        .target(
            name: "GLib", 
            dependencies: ["CGLib"],
            swiftSettings: [.unsafeFlags(["-Xfrontend", "-serialize-debugging-options"], .when(configuration: .debug))]
        ),
        .testTarget(name: "GLibTests", dependencies: ["GLib"]),
    ]
)
