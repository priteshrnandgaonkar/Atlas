// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "Atlas",
    products: [
        .library(
            name: "Atlas",
            targets: ["Atlas"]),
    ],
    targets: [
        .target(
            name: "Atlas",
            dependencies: []),
        .testTarget(
            name: "AtlasTests",
            dependencies: ["Atlas"]),
    ]
)
