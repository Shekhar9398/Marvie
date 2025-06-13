//
//  MarvieApp.swift
//  Marvie
//
//  Created by Shekhar Manwar on 10/06/25.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        Logger.log("Firebase initiated")
        return true
    }
}

@main
struct MarvieApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    var body: some Scene {
        WindowGroup {
            SplashScreenView()
        }
    }
}

