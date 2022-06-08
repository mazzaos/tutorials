//
//  LandmarksApp.swift
//  WatchLandmarks WatchKit Extension
//
//  Created by Lorenzo Lins Mazzarotto on 08/06/22.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
