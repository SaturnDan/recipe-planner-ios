//
//  ContentView.swift
//  recipe-planner
//
//  Created by Dan Malyaris on 1/2/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .plan
    @EnvironmentObject var modelData: ModelData
    
    enum Tab {
        case plan
        case recipes
        case shopping
        case search
    }
    
    var body: some View {
        TabView(selection: $selection) {
            WeeklyPlan()
                .tabItem {
                    Label ("Plan", systemImage: "checklist")
                }
                .tag(Tab.plan)
            
            ShoppingList()
                .tabItem {
                    Label ("Groceries", systemImage: "fork.knife")
                }
                .tag(Tab.shopping)
            RecipePage()
                .tabItem {
                    Label ("Discover", systemImage: "globe.desk")
                }
                .tag(Tab.recipes)
            
            
            
            SearchPage()
                .tabItem {
                    Label ("Search", systemImage: "magnifyingglass")
                }
                .tag(Tab.search)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
