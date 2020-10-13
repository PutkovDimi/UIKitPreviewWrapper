// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UIKitPreviewWrapper",
    products: [
        .library(
            name: "UIKitPreviewWrapper",
            targets: ["UIKitPreviewWrapper"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "UIKitPreviewWrapper",
            dependencies: [],
            path: "Sources",
            exclude: [
                "PreviewCodeSnippets",
                "PreviewFileTemplates",
                "scripts",
                "Example"
            ]),
    ]
)
