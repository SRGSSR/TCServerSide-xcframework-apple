// swift-tools-version:5.3

import PackageDescription

struct PackageMetadata {
    static let version: String = "5.1.2"
    static let checksum: String = "fdd79aa8e270aedc165c2d0456075793b9983faabeb4d8218a9f987210ea9a1b"
}

let package = Package(
    name: "TCServerSide",
    platforms: [
        .iOS(.v12),
        .tvOS(.v12)
    ],
    products: [
        .library(
            name: "TCServerSide",
            targets: ["TCServerSide"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "TCServerSide",
            url: "https://github.com/SRGSSR/TCServerSide-xcframework-apple/releases/download/\(PackageMetadata.version)/TCServerSide.xcframework.zip",
            checksum: PackageMetadata.checksum
        )
    ]
)
