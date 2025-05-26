// swift-tools-version:5.3
import PackageDescription

let version = "3.6.25-beta.1"
let checksum = "ec881ba3242b4863b2e218fd1bd9800529daebb4e4f840448d826685eccac4e4"
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
