// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "keystone-swift-1",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "keystone-swift-1",
            targets: ["keystone-swift-1"]
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "keystone-swift-1"
        ),
        .testTarget(
            name: "keystone-swift-1Tests",
            dependencies: ["keystone-swift-1"]
        ),
    ]
)
