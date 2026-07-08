// swift-tools-version:5.3
import PackageDescription

let version = "2.8.3"
let checksum = "a0c56827d5ad3c1bbe9f410f9554c7e7c7d31ba1e93c8f534bc72b8fcd374c92"
let repoName = "uxcam-ios-sdk"

let package = Package(

    name: "UXCam",

    platforms:
    [
        .iOS(.v12)
    ],

    products:
    [
        .library(
            name: "UXCam",
            targets: ["UXCamWrapper", "UXCam"]
        )
    ],

    targets:
    [
        // 'UXCamWrapper' target is a way to include the necessary linkerSettings that the binary XCFramework in UXCamFW requires.
        .target(
                name: "UXCamWrapper",
                path: "UXCamWrapper",
                exclude: ["README.md"],
                linkerSettings:
                [
                    .linkedFramework("AVFoundation"),
                    .linkedFramework("CoreGraphics"),
                    .linkedFramework("CoreMedia"),
                    .linkedFramework("CoreVideo"),
                    .linkedFramework("CoreTelephony"),
                    .linkedFramework("MobileCoreServices"),
                    .linkedFramework("QuartzCore"),
                    .linkedFramework("Security"),
                    .linkedFramework("SystemConfiguration"),
                    .linkedFramework("WebKit"),
                    .linkedLibrary("z"),
                    .linkedLibrary("iconv"),
                    .linkedLibrary("c++")
                ]
        ),

        .binaryTarget(
            name: "UXCam",
            url: "https://raw.githubusercontent.com/uxcam/\(repoName)/\(version)/UXCam.xcframework.zip",
            checksum: checksum
        )
    ]
)
