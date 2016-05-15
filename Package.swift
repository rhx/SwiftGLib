import PackageDescription

let package = Package(
    name: "GLib",
    dependencies: [
        .Package(url: "https://github.com/rhx/CGlib.git", majorVersion: 1)
    ]
)
