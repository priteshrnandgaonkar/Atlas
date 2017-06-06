// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "Atlas",
    products: [
        .library(
            name: "Atlas",
            targets: ["Atlas"]),
    ],    
    dependencies: [.package(url: "../someShit", from:"1.0.0")],
    targets: [
        .target(
            name: "Atlas",
            dependencies: ["someShit"]),
        .testTarget(
            name: "AtlasTests",
            dependencies: ["Atlas"]),
    ]
)
