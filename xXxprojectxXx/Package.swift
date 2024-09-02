// swift-tools-version:6.0

// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by xXxuserxXx on xXxdatexXx.
//  All code (c) xXxyearxXx - present day, xXxownerxXx.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import PackageDescription
import Foundation

var dependencies: [Package.Dependency] = [
            .package(url: "https://github.com/elegantchaos/ChaosTesting.git", from: "1.0.1"),
]

var plugins: [Target.PluginUsage] = []

// Add in support for the ActionBuilder plugin if we're building with it.
if ProcessInfo.processInfo.environment["RESOLVE_ACTION_PLUGINS"] != nil {
    print("'action builder'")
    dependencies.append(contentsOf: [
        .package(url: "https://github.com/elegantchaos/ActionBuilderPlugin.git", from: "2.0.0"),
    ])
    plugins.append(.plugin(name: "ActionBuilderPlugin", package: "ActionBuilderPlugin"))
}


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
    
    dependencies: dependencies,
    
    targets: [
        .target(
            name: "xXxprojectxXx",
            dependencies: [
            ],
            plugins: plugins
        ),
        
        .testTarget(
            name: "xXxprojectxXxTests",
            dependencies: [
                "xXxprojectxXx",
                "ChaosTesting"
            ]
        ),
    ]
)


