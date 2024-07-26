// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "DoorstepAIiOSPackage",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "DoorstepAIiOSPackage",
            targets: ["DoorstepAIiOSSDK"]),
    ],
    dependencies: [
        .package(url: "https://github.com/google-ar/arcore-ios-sdk", from: "1.40.0"),
        .package(url: "https://github.com/ikhvorost/ReactBridge.git", from: "1.0.0")
    ],
    targets: [
        .binaryTarget(
            name: "DoorstepAIiOSSDK",
            path: "./Sources/DoorstepAIiOSSDK.xcframework"
        )
    ]
)
