// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "XLPagerTabStrip",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "XLPagerTabStrip",
            targets: ["XLPagerTabStrip"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/Elshad/FXPageControl.git", .branch("master")),
    ],
    targets: [
        .target(
            name: "XLPagerTabStrip",
            dependencies: ["FXPageControl"],
            path: "Sources",
            resources: [
                .copy("ButtonCell.xib")
            ]
        )
    ]
)
