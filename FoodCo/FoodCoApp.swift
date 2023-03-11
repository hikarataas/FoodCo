//
//  FoodCoApp.swift
//  FoodCo
//
//  Created by Hilal Karataş on 4.03.2023.
//

import SwiftUI

@main
struct FoodCoApp: App {
    @StateObject var recipesViewModel = RecipesViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipesViewModel)
        }
    }
}


