// swift-tools-version:5.6

// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by xXxuserxXx on xXxdatexXx.
//  All code (c) xXxyearxXx - present day, xXxownerxXx.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import PackageDescription

let package = Package(
    name: "xXxprojectxXx",

    platforms: [
        .macOS(.v12), .macCatalyst(.v15), .iOS(.v15), .tvOS(.v15), .watchOS(.v8)
    ],

    products: [
        .library(
            name: "xXxprojectxXx",
            targets: ["xXxprojectxXx"]
        ),
    ],
    
    dependencies: [
        // testing support
        .package(url: "https://github.com/elegantchaos/XCTestExtensions.git", from: "1.4.2"),
        
        // tools
        .package(url: "https://github.com/elegantchaos/ActionBuilderPlugin.git", from: "1.0.7"),
        .package(url: "https://github.com/elegantchaos/SwiftFormatterPlugin.git", from: "1.0.3"),
    ],
    
    targets: [
        .target(
            name: "xXxprojectxXx",
            dependencies: [
            ]
        ),
        
        .testTarget(
            name: "xXxprojectxXxTests",
            dependencies: [
                "xXxprojectxXx",
                "XCTestExtensions"
            ]
        ),
    ]
)
