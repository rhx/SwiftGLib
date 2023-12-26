# Usage

Typically, you need to embed this package into your own project (see <doc:GettingStarted>)
using the [Swift Package Manager](https://swift.org/package-manager/).
After installing the prerequisites, add this package as a dependency to your `Package.swift` file, e.g.:

```swift
// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "MyPackage",
    dependencies: [
        .package(url: "https://github.com/rhx/gir2swift.git", branch: "main"),
        .package(url: "https://github.com/rhx/SwiftGLib.git", branch: "main"),
    ],
    targets: [
        .executableTarget(
            name: "MyPackage",
            dependencies: [
                .product(name: "GLib", package: "SwiftGLib"),
            ]
        ),
    ]
)
```

