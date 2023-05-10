// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FilterAppSDK1",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "FilterAppSDK1",
            targets: ["FilterAppSDK1"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        //.package(url: "https://github.com/AFathi/ARVideoKit.git", from: "1.5.51")
       // .package(url: "https://github.com/AFathi/ARVideoKit.git", exact: "1.5.51")
        Package.Dependency
        .package(name: "Firebase",
                   url: "https://github.com/firebase/firebase-ios-sdk.git",
                   from: "8.0"),
        .package(url: "https://github.com/SDWebImage/SDWebImage.git", exact: "5.1.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "FilterAppSDK1",
            dependencies: [
               .product(name: "FirebaseAuth", package: "Firebase"),
               .product(name: "Database", package: "Firebase"),
             ]),
        .testTarget(
            name: "FilterAppSDK1Tests",
            dependencies: ["FilterAppSDK1"]),
    ]
)
