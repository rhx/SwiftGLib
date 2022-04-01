// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "GLib",
    products: [ .library(name: "GLib", targets: ["GLib"]) ],
    dependencies: [
        .package(url: "https://github.com/rhx/gir2swift.git", branch: "development")
    ],
    targets: [
        .systemLibrary(name: "CGLib", pkgConfig: "gio-unix-2.0",
            providers: [
                .brew(["glib", "glib-networking", "gobject-introspection"]),
                .apt(["libglib2.0-dev", "glib-networking", "gobject-introspection", "libgirepository1.0-dev"])
            ]),
        .target(
            name: "GLib", 
            dependencies: [
                "CGLib",
                .product(name: "gir2swift", package: "gir2swift"),
            ],
            swiftSettings: [.unsafeFlags(["-Xfrontend", "-serialize-debugging-options"], .when(configuration: .debug))],
            plugins: [
                .plugin(name: "gir2swift-plugin", package: "gir2swift")
            ]
        ),
        .testTarget(name: "GLibTests", dependencies: ["GLib"]),
    ]
)
