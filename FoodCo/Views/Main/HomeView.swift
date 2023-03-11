//
//  HomeView.swift
//  FoodCo
//
//  Created by Hilal Karataş on 4.03.2023.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var recipesVM: RecipesViewModel
    var body: some View {
        NavigationView{
            ScrollView{
                RecipeList(recipes: recipesVM.recipes)
            }
            .navigationTitle("Recipes")
        }
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(RecipesViewModel())
    }
}
