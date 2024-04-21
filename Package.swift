// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RocketScientist",
    platforms: [
        .macOS(.v10_15),
        .iOS("17.0"),
        .tvOS("11.0"),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "RocketScientist",
            targets: ["RocketScientist"]),
    ],
    dependencies: [
        .package(url: "https://github.com/MacPaw/OpenAI.git", from: "0.2.8"),
        // .package(url: "https://github.com/DataDog/dd-sdk-ios.git", from: "2.9.0"),
        .package(url: "https://github.com/vapor/vapor.git", from: "4.93.0")
        
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "RocketScientist",
            dependencies: [
            .product(name: "OpenAI", package: "OpenAI"),
            // .product(name: "DatadogCore", package: "dd-sdk-ios"),
            // .product(name: "DatadogTrace", package: "dd-sdk-ios"),
            .product(name: "Vapor", package: "vapor")
            ]),
        .testTarget(
            name: "RocketScientistTests",
            dependencies: ["RocketScientist"]),
    ]
)
