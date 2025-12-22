// swift-tools-version:6.2
import PackageDescription

let package = Package(
    name: "keystone-swift",
    platforms: [.macOS(.v26)],
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
            dependencies: ["CKeystone"],// Links headers & the framework
            linkerSettings: [
                .linkedLibrary("c++")
            ]
        ),
        
        // 4. The Test Target
        .testTarget(
            name: "KeystoneTests",
            dependencies: ["Keystone"]
        )
    ]
)
