//
//  RecipesViewModel.swift
//  FoodCo
//
//  Created by Hilal Karataş on 5.03.2023.
//

import Foundation

class RecipesViewModel: ObservableObject {
    @Published private(set) var recipes: [Recipe] = []
    
    init() {
        recipes = Recipe.all
    }
    
    func addRecipe(recipe: Recipe) {
        recipes.append(recipe)
    }
}
