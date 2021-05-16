//
//  TrackerApp.swift
//  Tracker
//
//  Created by Anton Achedžak on 13.05.2021.
//

import SwiftUI

@main
struct TrekrApp: App {
    @StateObject var locations = Locations()
    


    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    ContentView(location: locations.primary)
                }
                .tabItem {
                    Image(systemName: "airplane.circle.fill")
                    Text("Objevuj")
                }

                NavigationView {
                    WorldView()
                }
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Místa")
                }
                NavigationView{
                    TipsView()
                }
                .tabItem {
                    Image(systemName:"list.bullet")
                    Text("Tipy")
                }
            }
            .environmentObject(locations)
        }
    }
}
