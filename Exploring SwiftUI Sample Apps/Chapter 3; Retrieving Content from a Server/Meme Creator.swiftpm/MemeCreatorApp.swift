import SwiftUI

@main
struct MemeCreatorApp: App {
    @StateObject private var fetcher = PandaCollectionFetcher()

    var body: some Scene {
        WindowGroup {
            NavigationView {
                MemeCreator()
                    .environmentObject(fetcher)

            }
            .navigationViewStyle(.stack)
        }
    }
}
