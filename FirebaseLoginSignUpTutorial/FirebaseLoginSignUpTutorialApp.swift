//
//  FirebaseLoginSignUpTutorialApp.swift
//  FirebaseLoginSignUpTutorial
//
//  Created by Richa Srivastava on 29/06/2025.
//

import SwiftUI
import FirebaseCore

@main
struct FirebaseLoginSignUpTutorialApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
