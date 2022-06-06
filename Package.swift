// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "pdfwriter",
    platforms: [
        .macOS(.v11), .iOS(.v12), .macCatalyst(.v14)
    ],
    products: [
        .library(
            name: "pdfwriter",
            targets: ["pdfwriter"]),
    ],
    dependencies: [
        .package(url: "https://github.com/awxkee/mozjpeg.swift.git", branch: "master"),
        .package(url: "https://github.com/awxkee/libpng.swift.git", branch: "master")
    ],
    targets: [
        .target(name: "pdfwriter", dependencies: [
            .target(name: "libPDFWriter"),
            .target(name: "libLibTiff"),
            .target(name: "libLibAesgm"),
            .target(name: "libFreeType"),
            .product(name: "mozjpeg", package: "mozjpeg.swift"),
            .product(name: "libpng", package: "libpng.swift")
        ]),
        .binaryTarget(name: "libPDFWriter", path: "Sources/libPDFWriter.xcframework"),
        .binaryTarget(name: "libLibTiff", path: "Sources/libLibTiff.xcframework"),
        .binaryTarget(name: "libLibAesgm", path: "Sources/libLibAesgm.xcframework"),
        .binaryTarget(name: "libFreeType", path: "Sources/libFreeType.xcframework")
    ]
)
