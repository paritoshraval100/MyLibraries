// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyLibraries",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Package1",
            targets: ["Package1"]),
        .library(
            name: "Package2",
            targets: ["Package2"]),

    ],
    dependencies: [
        .package(url: "https://github.com/paritoshraval100/Package3.git", from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Package1",
            dependencies: [
                "Package3"
            ]),
        .target(
            name: "Package2",
            dependencies: []),
    ]
)

// MARK: - Conditional array helpers

private func flatten<Element>(_ items: [[Element]]) -> [Element] {
    return items.flatMap { $0 }
}

private func always<Element>(use items: [Element]) -> [Element] {
    return items
}

private func when<Element>(_ condition: Bool, use items: [Element]) -> [Element] {
    if condition {
        return items
    } else {
        return []
    }
}
