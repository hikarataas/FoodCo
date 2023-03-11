//
//  ContentView.swift
//  FoodCo
//
//  Created by Hilal Karataş on 4.03.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       TabBar()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(RecipesViewModel())
    }
}
