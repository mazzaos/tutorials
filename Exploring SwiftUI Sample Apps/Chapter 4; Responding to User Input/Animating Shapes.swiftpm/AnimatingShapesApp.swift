import SwiftUI

@main
struct AnimatingShapesApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                TopicList(contentSource: TopicData.homeContent)
            }
        }
    }
}
