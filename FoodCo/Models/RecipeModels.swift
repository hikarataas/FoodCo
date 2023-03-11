//
//  RecipeModels.swift
//  FoodCo
//
//  Created by Hilal Karataş on 4.03.2023.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id: String {self.rawValue}
    
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Desert"
    case snack = "Snack"
    case drink = "Drink"
}

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let ingredients: String
    let description: String
    let direction: String
    let category: Category.RawValue
    let datePublished: String
    let url: String
}

extension Recipe {
    static let all: [Recipe] = [
    Recipe(
        name: "Mexican Breakfast Hash with Lime Crema",
        image: "https://ncsweetpotatoes.com/wp-content/uploads/2020/05/mexican-quinoa3-600x900.jpg",
        ingredients: "3 to 4 tablespoons unsweetened, unflavored plant-based milk, 1 cup chopped green bell pepper", description: "Enjoy this breakfast hash on its own or spoon the delicious jumble into warm corn tortillas for a morning twist on tacos that will leave you satisfied and nourished. ",
        direction: "For Lime Crema, place the tofu, lime juice, lime zest, and garlic powder in a food processor.",
        category: "Breakfast",
        datePublished: "2023-01-03",
        url: "https://www.forksoverknives.com/tag/mexican/"
    ),
    Recipe(
        name: "Easy Herbed Couscous",
        image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/98894/Red-Cabbage-and-Orange-Salad-for-Wordpress-e1677793120277-360x270-c.jpg",
        ingredients: "1½ cups dry whole wheat couscous, ¼ cup chopped fresh mint leaves, Sea salt, to taste", description: "Couscous, a tiny pasta with nutty undertones, is a delicious base for absorbing the fragrant flavors of Moroccan stews.",
        direction: "In a medium saucepan bring 3½ cups water to boiling. Stir in couscous. Immediately remove pan from heat, cover, and let stand 10 to 15 minutes or until liquid has been absorbed. Stir in the remaining ingredients while gently fluffing couscous with a fork.",
        category: "Salad",
        datePublished: "2023-02-09",
        url: "https://www.forksoverknives.com/recipes/vegan-salads-sides/easy-herbed-couscous/"
    ),
    Recipe(
        name: "Cheesy Vegan Stuffed Spinach Bites",
        image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/162258/Spinach-Lentil-Soup-wordpress-360x270-c.jpg",
        ingredients: "2¼ lb. Yukon Gold potatoes, peeled and cut into 1-inch chunks, ¾ cup unsweetened, unflavored plant-based milk, 8 small cloves garlic, minced", description: "Tasty both right out of the oven or at room temperature, these savory snacks are filled with homemade potato-based vegan cheese.",
        direction: "Bake 20 minutes. Remove from oven and let cool 5 minutes. Flip balls over and return to oven. Bake 20 minutes more. Serve immediately with warm marinara.",
        category: "Snack",
        datePublished: "2023-09-09",
        url: "https://www.forksoverknives.com/recipes/vegan-snacks-appetizers/cheesy-vegan-stuffed-spinach-bites/"
    ),
    Recipe(
        name: "Healty Water",
        image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfwfFh3peQSUcY7aMWxAcvpU9jJwGCAL0IveC6w48STGeS3log8ZOeCF0dDXIinUXOs7Q&usqp=CAU",
        ingredients: "2 tablespoons lemon juice, Sea salt, to taste, 1 cup water", description: "Tastefull",
        direction: "combine all",
        category: "Drink",
        datePublished:"2023-01-09",
        url: "https://www.forksoverknives.com/recipes/vegan-soups-stews/shiro-wat-chickpea-flour-stew/"
    ),
    Recipe(
        name: "German Potato Dumplings with Mushroom Gravy",
        image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/147275/lima-bean-pesto-hummus-wordpress-360x270-c.jpg",
        ingredients: "1 tablespoon finely chopped fresh parsley, 2 cups unsweetened, unflavored plant-based milk, 2 teaspoons finely chopped fresh thyme", description: "A staple side dish throughout Germany, these gnocchi-like dumplings are hearty enough to serve as an entrée, too.",
        direction: "To serve, place a few dumplings on a plate or in a shallow bowl. Spoon gravy over top. Garnish with parsley. Serve hot.",
        category: "Side",
        datePublished: "2022-09-02",
        url: "https://www.forksoverknives.com/recipes/vegan-salads-sides/german-potato-dumplings-with-mushroom-gravy/"
    ),
    Recipe(
        name: "Gluten-Free Gnocchi with Roasted Vegetables",
        image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/162266/Sweet-Potato-Planks-with-Grilled-Salsa-wordrpess-360x270-c.jpg",
        ingredients: "3 cups riced cauliflower, ½ cup chopped fresh parsley, 1 lb. Brussels sprouts, trimmed and halved or quartered", description: "These gnocchi keep well in the freezer, so feel free to make an extra batch and save some for a rainy day.",
        direction: "Bring a large pot of water to boiling. Drop gnocchi in, one-fourth at a time. When gnocchi float to the surface after about 1½ minutes, use a slotted spoon to transfer to a bowl; cover to keep warm. Repeat with remaining gnocchi.",
        category: "Main",
        datePublished: "2022-09-08",
        url: "https://www.forksoverknives.com/recipes/vegan-pasta-noodles/gluten-free-gnocchi-with-roasted-vegetables/"
    ),
    Recipe(
        name: "Porcini-Lentil Vegan Pâté",
        image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/162262/Toni-Okamotos-Sopa-de-Fideo-wordrpess-360x270-c.jpg",
        ingredients: "1 cup chopped shallots, ¼ teaspoon freshly ground black pepper, ½ oz. dried porcini mushrooms, broken into pieces (½ cup)", description: "When you’re ready to wow a crowd with a plant-based party appetizer, this vegan pâté is sure to do the trick.",
        direction: "Drain lentil mixture, reserving the liquid; remove bay leaf. Place lentil mixture and pepper in a food processor; pulse until chopped. If needed, add reserved cooking liquid, 1 to 2 tablespoons at a time, as needed for a smooth, spreadable consistency. Chill at least 2 hours before serving.",
        category: "Appetizer",
        datePublished: "2023-03-04",
        url: "https://www.forksoverknives.com/recipes/vegan-snacks-appetizers/porcini-lentil-vegan-pate/"
    ),
    Recipe(
        name: "Shiro Wat (Chickpea Flour Stew)",
        image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/162258/Spinach-Lentil-Soup-wordpress-360x270-c.jpg",
        ingredients: "1 cup chickpea flour, 12 cloves garlic, minced, 1½ tablespoons Berbere Spice Blend, Sea salt, to taste", description: "A vegetarian classic in Ethiopian cuisine, shiro wat is a thick, smooth stew made from chickpea flour (also known as besan).",
        direction: "In a large saucepan combine onion, garlic, and ¼ cup water. Cover and cook over medium 10 minutes or until onion is tender, stirring occasionally. Add tomato, Berbere Spice Blend, and cardamom; cook 10 minutes more.",
        category: "Soup",
        datePublished: "2023-09-03",
        url: "https://www.forksoverknives.com/recipes/vegan-soups-stews/shiro-wat-chickpea-flour-stew/"
    ),
    Recipe(
        name: "Key Lime Oat Bites",
        image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTxXDkvg-mkk6Z_TimeYt1EF4beRnW21621o56zdWnNA&s",
        ingredients: "1 cup regular rolled oats, 1 teaspoon Key lime zest or Persian lime zest, 2 tablespoons powdered or finely granulated pure cane sugar", description: "These wholesome treats deliver a burst of bright Key lime pie flavor in bite-size packages.",
        direction: "Spoon 12 portions of mixture (4 teaspoons each) onto waxed paper. Moisten hands with water and roll portions into balls. Place in an airtight container and refrigerate until ready to serve. Place powdered sugar in a shallow bowl. Roll balls in sugar before serving.",
        category: "Desert",
        datePublished: "2023-05-09",
        url: "https://www.forksoverknives.com/recipes/vegan-desserts/key-lime-oat-bites/"
    )
  ]
}
