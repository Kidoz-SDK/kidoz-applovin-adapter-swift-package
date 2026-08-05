// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "KidozApplovinAdapter",
    platforms: [
        .iOS(.v12) // or your minimum supported version
    ],
    products: [
        .library(
            name: "KidozApplovinAdapter",
            targets: ["KidozApplovinAdapterTarget"]
        )
    ],
    dependencies: [
        // Dependency on core SDK
        .package(url: "https://github.com/Kidoz-SDK/kidoz-sdk-swift-package.git", from: "10.1.3"),
        // Dependency on mediation network SDK
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", "11.4.4"..<"14.0.0")
    ],
    targets: [
        .target(
            name: "KidozApplovinAdapterTarget",
            dependencies: [
                .product(name: "KidozSDK", package: "kidoz-sdk-swift-package"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
                "KidozApplovinAdapter"
            ]
        ),
        .binaryTarget(
            name: "KidozApplovinAdapter",
            path: "XCFramework/KidozApplovinAdapter.xcframework"
        )
    ]
)
