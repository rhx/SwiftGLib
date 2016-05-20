import PackageDescription

let package = Package(
    name: "GLib",
    dependencies: [
        //.Package(url: "https://github.com/rhx/CGLib.git", majorVersion: 1)
        .Package(url: "../CGLib", majorVersion: 1)
    ]
)
