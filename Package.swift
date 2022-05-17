// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "pdfwriter",
    products: [
        .library(
            name: "pdfwriter",
            targets: ["libPDFWriter", "libLibTiff", "libLibAesgm"]),
    ],
    dependencies: [
        .package(url: "https://github.com/awxkee/mozjpeg.swift.git", branch: "master"),
        .package(url: "https://github.com/awxkee/libpng.swift.git", branch: "master")
    ],
    targets: [
        .binaryTarget(name: "libPDFWriter", path: "Sources/libPDFWriter.xcframework"),
        .binaryTarget(name: "libLibTiff", path: "Sources/libLibTiff.xcframework"),
        .binaryTarget(name: "libLibAesgm", path: "Sources/libLibAesgm.xcframework"),
    ]
)
