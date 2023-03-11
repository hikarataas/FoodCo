//
//  TabBar.swift
//  FoodCo
//
//  Created by Hilal Karataş on 4.03.2023.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            ExploreView()
                .tabItem {
                    Label("Explore", systemImage: "square.fill.text.grid.1x2")
                }
            
            NewRecipeView()
                .tabItem {
                    Label("New", systemImage: "plus")
                }
            
            CommunityView()
                .tabItem {
                    Label("Community", systemImage: "rectangle.3.group.bubble.left")
                }
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
            .environmentObject(RecipesViewModel())
    }
}
