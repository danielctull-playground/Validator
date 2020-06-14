// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "Validator",
    products: [
        .library(
            name: "Validator",
            targets: ["Validator"]),
    ],
    targets: [
        .target(
            name: "Validator"),
        .testTarget(
            name: "ValidatorTests",
            dependencies: ["Validator"]),
    ]
)
