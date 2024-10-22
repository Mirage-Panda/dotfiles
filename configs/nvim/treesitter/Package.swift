// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TreeSitterTreesitter",
    products: [
        .library(name: "TreeSitterTreesitter", targets: ["TreeSitterTreesitter"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ChimeHQ/SwiftTreeSitter", from: "0.8.0"),
    ],
    targets: [
        .target(
            name: "TreeSitterTreesitter",
            dependencies: [],
            path: ".",
            sources: [
                "src/parser.c",
                // NOTE: if your language has an external scanner, add it here.
            ],
            resources: [
                .copy("queries")
            ],
            publicHeadersPath: "bindings/swift",
            cSettings: [.headerSearchPath("src")]
        ),
        .testTarget(
            name: "TreeSitterTreesitterTests",
            dependencies: [
                "SwiftTreeSitter",
                "TreeSitterTreesitter",
            ],
            path: "bindings/swift/TreeSitterTreesitterTests"
        )
    ],
    cLanguageStandard: .c11
)
