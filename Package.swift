// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "GLib",
    products: [ .library(name: "GLib", targets: ["GLib"]) ],
    dependencies: [
        .package(name: "gir2swift", url: "https://github.com/rhx/gir2swift.git", .branch("development"))
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
