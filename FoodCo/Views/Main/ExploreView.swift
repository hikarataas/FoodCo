//
//  ExploreView.swift
//  FoodCo
//
//  Created by Hilal Karataş on 4.03.2023.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationView {
            List{
                ForEach(Category.allCases) {category in
                    NavigationLink{
                        CategoryView(category: category)
                    } label: {
                        Text(category.rawValue + "s")
                    }
                }
            }
                .navigationTitle("Explore")
        }
        .navigationViewStyle(.stack)
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
