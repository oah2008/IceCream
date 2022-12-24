// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "IceCream",
    platforms: [
        .macOS(.v10_12), .iOS(.v10), .tvOS(.v10), .watchOS(.v3)
    ],
    products: [
        .library(
            name: "IceCream",
            targets: ["IceCream"]),
    ],
    dependencies: [
        .package(name: "realm-cocoa",url: "https://github.com/realm/realm-cocoa",.upToNextMinor(from: "10.33.0"))
    ],
    targets: [
        .target(
            name: "IceCream",
            dependencies: [
                .product(name: "RealmSwift", package: "realm-cocoa"),
                .product(name: "Realm", package: "realm-cocoa")],
            path: "IceCream",
            sources: ["Classes"])
    ]
)
  
