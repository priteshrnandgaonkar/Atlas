// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "Atlas",
    dependencies: [.package(url: "../someShit", from:"1.0.0")],
    products: [
        .library(
            name: "Atlas",
            targets: ["Atlas"]),
    ],
    targets: [
        .target(
            name: "Atlas",
            dependencies: ["someShit"]),
        .testTarget(
            name: "AtlasTests",
            dependencies: ["Atlas"]),
    ]
)
