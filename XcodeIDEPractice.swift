

import Foundation

// MARK: - Xcode IDE Practice

struct AppInformation {

    var projectName: String
    var targetName: String
    var schemeName: String
    var bundleIdentifier: String
    var deploymentTarget: String
    var buildConfiguration: String

    func displayDetails() {

        print("===== XCODE IDE DETAILS =====")

        print("Project Name: \(projectName)")
        print("Target Name: \(targetName)")
        print("Scheme Name: \(schemeName)")
        print("Bundle Identifier: \(bundleIdentifier)")
        print("Deployment Target: \(deploymentTarget)")
        print("Build Configuration: \(buildConfiguration)")
    }
}

// MARK: - Main Program

let app = AppInformation(
    projectName: "StudentManagementApp",
    targetName: "StudentManagementApp",
    schemeName: "StudentManagementApp",
    bundleIdentifier: "com.example.StudentManagementApp",
    deploymentTarget: "iOS 16.0",
    buildConfiguration: "Debug"
)

app.displayDetails()
