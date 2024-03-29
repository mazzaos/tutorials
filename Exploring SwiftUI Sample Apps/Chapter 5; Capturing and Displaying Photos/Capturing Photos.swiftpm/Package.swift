// swift-tools-version: 5.5

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "Capturing Photos",
    platforms: [
        .iOS("15.2")
    ],
    products: [
        .iOSApplication(
            name: "Capturing Photos",
            targets: ["AppModule"],
            bundleIdentifier: "dev.mazzaos.Capturing-Photos",
            teamIdentifier: "2GPC52S3LY",
            displayVersion: "1.0",
            bundleVersion: "1",
            iconAssetName: "AppIcon",
            accentColorAssetName: "AccentColor",
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ],
            capabilities: [
                .camera(purposeString: "This sample app uses the camera."),
                .photoLibrary(purposeString: "This sample app uses your photo library.")
            ]
        )
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            path: "."
        )
    ]
)