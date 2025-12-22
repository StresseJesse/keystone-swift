// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "keystone-swift",
    platforms: [.macOS(.v14)],
    products: [
        .library(
            name: "Keystone",
            targets: ["Keystone"]),
    ],
    targets: [
//        .target(
//            name: "CKeystone",
//            path: "Sources/CKeystone",
//            publicHeadersPath: "include"
//        ),
        
        .binaryTarget(
            name: "CKeystone",
            path: "Sources/CKeystone/libkeystone.xcframework"
        ),

        .target(
            name: "Keystone",
            dependencies: ["CKeystone"] // Links headers & the framework
        ),
        
        // 4. The Test Target
        .testTarget(
            name: "KeystoneTests",
            dependencies: ["Keystone"]
        )
    ]
)
