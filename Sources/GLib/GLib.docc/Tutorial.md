# Using GLib with Swift

This tutorial shows how to use GLib with Swift.
This is particularly useful if you want to interact
with libraries written in C or other languages that use GLib.


## What is GLib?

[GLib](https://docs.gtk.org/glib/) is a low-level,
general-purpose software library that provides a set of
useful data types, string utilities, filesystem abstractions,
a mainloop abstraction, and similar tools for developing
libraries and applications in different programming languages.
GLIb is mainly used for creating and interacting with
low-level data structures and supports features such as
event-driven programming, memory management, and data
type management.
GLib is part of the GNOME project, but works with different
Operating Systems, including Linux and macOS.


## Swift Bindings

The Swift language bindings have been generated using
the `.gir` files from
[GObject Introspection](https://gi.readthedocs.io/en/latest/),
allowing a more "swifty" use of the library than using it
through the low-level C interface.
Particularly the collection interfaces, such as
[singly](https://rhx.github.io/SwiftGLib/GLib/documentation/glib/typedslist) and
[doubly-linked lists](https://rhx.github.io/SwiftGLib/GLib/documentation/glib/typedlist)
allow to use templated Swift data types rather than raw
pointers.


## Prerequisites

To get the most out of this tutorial, you should be
generally familiar with Linux, macOS, or other UNIX-like
environments and know how to use a command-line shell
such as [bash](https://www.gnu.org/software/bash/) or
[zsh](https://www.zsh.org/).

You will need a
[working Swift compiler](https://www.swift.org/getting-started/cli-swiftpm/),
either by
[installing Xcode](https://developer.apple.com/support/xcode/)
if you are running macOS, or
by [installing Swift](https://www.swift.org/install/)
directly for your Operating System.

You also need to install the GLib development libraries
for your system.

### Installing GLib on Linux

Most modern Linux distributions come with the GLib runtime
preinstalled, but you will need to install the headers
necessary for development.
This can be done using the package manager for your system.
For example, on Ubuntu or other Debian-based systems,
you can use the [apt](https://wiki.debian.org/Apt) package
manager using the following commands:

    sudo apt update
    sudo apt install libglib2.0-dev glib-networking gobject-introspection libgirepository1.0-dev libxml2-dev jq

Depending on your Linux distributions, the names of the
packages and package management tools will vary.
You should be able to find this in the documentation for
your Linux distribution.

> Tip: Some more examples can also be found in the
[README](https://github.com/rhx/SwiftGLib/blob/main/README.md).

### Installing GLib on macOS

For macOS, there are multiple package management tools
that you can use.
[HomeBrew](http://brew.sh/) is one example.
After you have installed HomeBrew, you can install
GLib using:

    brew update
    brew install glib glib-networking gobject-introspection pkg-config jq


## Compiling SwiftGLib programs

The easiest way to compile programs and libraries using
SwiftGLib is through projects using the
[Swift Package Manager](https://swift.org/package-manager/).
Here is an example for a simple program that uses a
[type list](https://rhx.github.io/SwiftGLib/GLib/documentation/glib/typedlist).
First, create a directory (folder) for your project, then
create the project inside the folder:

    mkdir swift-glist
    cd swift-glist
    swift package init --type=executable
    
This will create a simple "Hello World" executable that
you can test using `swift run` -- the program will run
and print "Hello world".
If you look at the files generated by `swift package init`,
you will find a file named `Package.swift` that represents
the project and its compilation targets.
Overall, if you run

    find * -type f
    
you should see two files, the aforementioned `Package.swift`
and a `main.swift` in `Sources/swift-glist`:

    Package.swift
    Sources/swift-glist/main.swift

> Warning: Some versions of the Swift Package manager create
a flat structure when using `swift package init` that puts
the `main.swift` directly in the `Sources` folder.
This will cause the Swift compiler to exit with an error if
you try to use `swift run`.

Such a faulty structure that places your `main.swift`
directly in the `Sources` folder would look like this:

    Package.swift
    Sources/main.swift

In this case, your program won't compile or run.
To fix this, you need to move the `main.swift` file
into a `swift-glist` subfolder:

    mkdir Sources/swift-glist
    mv Sources/main.swift Sources/swift-glist/

Now you should be able to build your project.

Let us now change the `Package.swift` file so that it
reads:

```Swift
// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "swift-glist",
    dependencies: [
        .package(url: "https://github.com/rhx/gir2swift.git", branch: "main"),
        .package(url: "https://github.com/rhx/SwiftGLib.git", branch: "main"),
    ],
    targets: [
        .executableTarget(
            name: "swift-glist",
            dependencies: [
                .product(name: "GLib", package: "SwiftGLib"),
            ]
        ),
    ]
)
```
This will add the relevant dependencies for SwiftGLib
to the project.  We can now change the code in our
`Sources/swift-glist/main.swift` so that it reads:
```Swift
import GLib

let list: TypedList = ["Hello", "world"]

print(list.length())  // Prints: 2

list.forEach { element in
    print(element)    // Prints: "hello" and "world"
}
```
Compile and run the code using:

    swift run

After some compiler output (and potentially
some warnings that you can ignore), you should get the
following output:

    2
    Hello
    world

