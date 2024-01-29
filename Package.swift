// swift-tools-version:5.3
import PackageDescription

let version = "3.6.9"
let checksum = "be787f0429c66d3d4aafcd96001ec5a8eb9a0ed33179db06713d6a5f76cb877b"
let repoName = "uxcam-ios-sdk"

let package = Package(

    name: "UXCam",

    platforms:
    [
        .iOS(.v10)
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
