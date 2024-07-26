// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DoorstepAIiOSPackage",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "DoorstepAIiOSPackage",
            targets: ["DoorstepAIiOSPackageWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/google-ar/arcore-ios-sdk", from: "1.44.0")
    ],
    targets: [
        .target(
            name: "DoorstepAIiOSPackageWrapper",
            dependencies: [
                .target(name: "DoorstepAIiOSPackage"),
                .product(name: "ARCoreGeospatial", package: "arcore-ios-sdk"),
                .product(name: "ARCoreGARSession", package: "arcore-ios-sdk")
            ],
            path: "Sources/Wrapper"
        ),
        .binaryTarget(
            name: "DoorstepAIiOSPackage",
            path: "./Sources/DoorstepAIiOSSDKFramework.xcframework"
        )
    ]
)
