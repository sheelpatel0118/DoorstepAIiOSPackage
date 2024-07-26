// swift-tools-version: 5.10
// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "DoorstepAIiOSSDK",
    platforms: [
        .iOS(.v14) // Specify the minimum iOS version your framework supports
    ],
    products: [
        .library(
            name: "DoorstepAIiOSSDK",
            targets: ["DoorstepAIiOSSDK"]
        ),
    ],
    dependencies: [
        // Add any other dependencies your framework needs
        .package(url: "https://github.com/google-ar/arcore-ios-sdk", from: "1.0.0"),
    ],
    targets: [
        .binaryTarget(
            name: "DoorstepAIiOSSDK",
            path: "./DoorstepAIiOSSDK.xcframework"
        ),
        .target(
            name: "DoorstepAIiOSSDKWrapper",
            dependencies: [
                "DoorstepAIiOSSDK",
                .product(name: "ARCoreGeospatial", package: "arcore-ios-sdk")
            ],
            path: "./Sources"
        )
    ]
)
