// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "keystone-swift",
    products: [
        .library(
            name: "Keystone",
            targets: ["Keystone"]),
    ],
    targets: [
        // 1. Target for C Headers and Modulemap (What Swift imports from)
        .target(
            name: "CKeystone",
            path: "Sources/CKeystone",
            publicHeadersPath: "include"
            // SPM automatically links the framework when it sees the dependency below
        ),
        
        // 2. Binary Target pointing to the XCFramework file
        .binaryTarget(
            name: "KeystoneFramework",
            path: "Sources/CKeystone/libkeystone.xcframework"
        ),

        // 3. The main Swift Target (Depends on both C targets)
        .target(
            name: "Keystone",
            dependencies: ["CKeystone", "KeystoneFramework"] // Links headers & the framework
        ),
        
        // 4. The Test Target
        .testTarget(
            name: "KeystoneTests",
            dependencies: ["Keystone"]
        )
    ]
)
