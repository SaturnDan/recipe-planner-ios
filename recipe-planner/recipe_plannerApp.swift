//
//  recipe_plannerApp.swift
//  recipe-planner
//
//  Created by Dan Malyaris on 1/2/2023.
//

import SwiftUI

@main
struct recipe_plannerApp: App {
    @Environment(\.scenePhase) var scenePhase
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ModelData())
                .onChange(of: scenePhase) { phase in
                    if phase == .background {
                        
                    }
                }
        }
    }
}
