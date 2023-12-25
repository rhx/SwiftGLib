# SwiftGLib

A Swift wrapper around glib-2.x that is largely auto-generated from gobject-introspection.
For up to date (auto-generated) reference documentation, see https://rhx.github.io/SwiftGLib/

![macOS](https://github.com/rhx/SwiftGLib/actions/workflows/macOS.yml/badge.svg?branch=development)
![Linux](https://github.com/rhx/SwiftGLib/actions/workflows/Linux.yml/badge.svg?branch=development)
![Windows](https://github.com/rhx/SwiftGLib/actions/workflows/Windows.yml/badge.svg?branch=development)

## Overview

SwiftGLib allows you to use the low-level GLib library directly from Swift
without having to resort to using the low-level C interface.
GLib has been in development for many years and is used by numerous open source
programs and libraries including [Gtk](https://github.com/rhx/SwiftGtk).
GLib is particularly useful for organising low-level data by providing abstractions
for data structures, containers, and collections that can directly be used by C code
as well as Swift.

## Usage

Typically, you need to embed this package into your own project (see <doc:GettingStarted>) using the [Swift Package Manager](https://swift.org/package-manager/).  After installing the prerequisites, add this package as a dependency to your `Package.swift` file, e.g.:

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

## Getting Started

To build, download Swift from https://swift.org/download/ -- if you are using macOS, make sure you have the command line tools installed as well).  Test that your compiler works using `swift --version`, which should give you something like

	$ swift --version
    swift-driver version: 1.87.3 Apple Swift version 5.9.2 (swiftlang-5.9.2.2.56 clang-1500.1.0.2.5)
    Target: arm64-apple-macosx14.0

on macOS, or on Linux you should get something like:

	$ swift --version
	Swift version 5.9.2 (swift-5.9.2-RELEASE)
	Target: x86_64-unknown-linux-gnu

### GLib 2.56 or higher

These Swift wrappers have been tested with glib-2.56, 2.58, 2.60, 2.62, 2.64, 2.66, 2.68, 2.70, 2.72, 2.73, 2.74, 2.76, and 2.78.  They should work with higher versions, but YMMV.  Also make sure you have `gobject-introspection` and its `.gir` files installed.

#### Linux

##### Ubuntu

On Ubuntu 18.04, 20.04, and 22.04 you can use the glib that comes with the distribution.  Just install with the `apt` package manager:

	sudo apt update
	sudo apt install libglib2.0-dev glib-networking gobject-introspection libgirepository1.0-dev libxml2-dev jq

##### Fedora

On Fedora 29, you can use the gtk that comes with the distribution.  Just install with the `dnf` package manager:

	sudo dnf install glib2-devel gobject-introspection-devel libxml2-devel jq

#### macOS

On macOS, you can install glib using HomeBrew (for setup instructions, see http://brew.sh):

	brew update
	brew install glib glib-networking gobject-introspection pkg-config jq


## Building

Normally, you don't build this package directly, but you embed it into your own project (see 'Usage' above).  However, you can build and test this module separately to ensure that everything works.  Make sure you have all the prerequisites installed (see above).  After that, you can simply clone this repository and build the command line executable (be patient, this will download all the required dependencies and take a while to compile) using

	git clone https://github.com/rhx/SwiftGLib.git
	cd SwiftGLib
    swift build
    swift test

## Documentation

You can generate documentation using the [DocC plugin](https://apple.github.io/swift-docc-plugin/documentation/swiftdoccplugin/).  To preview documentation matching your local installation, simply run

    swift package --disable-sandbox preview-documentation

then navigate to the URL shown for the local preview server.  Make sure you have JavaScript enabled in your browser.

Alternatively, you can create static documentation using [jazzy](https://github.com/realm/jazzy).
Make sure you have [sourcekitten](https://github.com/jpsim/SourceKitten) and [jazzy](https://github.com/realm/jazzy) installed, e.g. on macOS (x86_64):

	brew install ruby sourcekitten
	/usr/local/opt/ruby/bin/gem install jazzy
	./generate-jazzy.sh

## Troubleshooting

Here are some common errors you might encounter and how to fix them.

### Missing `.gir` Files

If you get an error such as

	Girs located at
	Cannot open '/GLib-2.0.gir': No such file or directory

Make sure that you have the relevant `gobject-introspection` packages installed (as per the Pre-requisites section), including their `.gir` and `.pc` files.

### Old Swift toolchain or Xcode
If, when you run `swift build`, you get a `Segmentation fault (core dumped)` or circular dependency error such as

	warning: circular dependency detected while parsing pangocairo: harfbuzz -> freetype2 -> harfbuzz
	
this probably means that your Swift toolchain is too old, particularly on Linux.
Make sure the latest toolchain is the one that is found when you run the Swift compiler (see above).

  If you get an older version, make sure that the right version of the swift compiler is found first in your `PATH`.  On macOS, use xcode-select to select and install the latest version, e.g.:

	sudo xcode-select -s /Applications/Xcode.app
	xcode-select --install
