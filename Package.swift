// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "KidozApplovinAdapter",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "KidozApplovinAdapter",
            targets: ["KidozApplovinAdapter"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "KidozApplovinAdapter",
            url: "https://github.com/Kidoz-SDK/kidoz-ios-frameworks/raw/refs/heads/main/mediation/applovin/2.0.2/KidozApplovinAdapter.zip",
            checksum: "96244d017f38239cd669c9c22f4d0e3d00efecf65b1875008c79cd1d507a1e7e"
        ),
        dependencies: [
            .package(url: "https://github.com/Kidoz-SDK/core-sdk-swift-package.git", from: "")
        ]
    ]
)
