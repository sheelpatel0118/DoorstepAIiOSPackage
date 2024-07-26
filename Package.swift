// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "DoorstepAIiOSPackage",
    platforms: [
        .iOS(.v11)
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
                "DoorstepAIiOSSDKFramework",
                .product(name: "ARCoreGeospatial", package: "arcore-ios-sdk")
            ],
            path: "Sources/Wrapper"
        ),
        .binaryTarget(
            name: "DoorstepAIiOSSDKFramework",
            path: "./Sources/DoorstepAIiOSSDKFramework.xcframework"
        )
    ]
)
