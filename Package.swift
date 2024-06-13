// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "FalClient",
    platforms: [
        .iOS(.v15),
        .macOS(.v12),
        .macCatalyst(.v15),
        .tvOS(.v15),
        .watchOS(.v8),
    ],
    products: [
        .library(
            name: "FalClient",
            targets: ["FalClient"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/nnabeyang/swift-msgpack.git", from: "0.3.3"),
        .package(url: "https://github.com/PreternaturalAI/AI.git", branch: "main"),
    ],
    targets: [
        .target(
            name: "FalClient",
            dependencies: [
                "AI",
                .product(name: "SwiftMsgpack", package: "swift-msgpack"),
            ],
            path: "Sources/FalClient"
        ),
    ],
    swiftLanguageVersions: [.v5]
)
