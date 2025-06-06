// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "SRTHaishinKit",
    platforms: [
        .iOS(.v13),
        .tvOS(.v10),
        .macOS(.v10_11)
    ],
    products: [
        .library(name: "SRTHaishinKit", targets: ["SRTHaishinKit"])
    ],
    dependencies: [
        .package(url: "https://github.com/shogo4405/Logboard.git", .exact("2.2.2"))
    ],
    targets: [
        .target(name: "SwiftPMSupport"),
        .target(name: "SRTHaishinKit", dependencies: ["Logboard", "SwiftPMSupport"],
                path: "Sources",
                sources: [
                    "Codec",
                    "Extension",
                    "FLV",
                    "HTTP",
                    "ISO",
                    "Media",
                    "Net",
                    "PiP",
                    "RTMP",
                    "Util",
                    "Platforms"
                ])
    ]
)
