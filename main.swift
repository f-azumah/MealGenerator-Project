//
//  main.swift
//  MealGenerator
//
//  Created by Fiona Azumah on 7/7/24.
//

import Foundation

// Dictionary of recipes: meal names as keys, lists of ingredients as values
var myRecipes = ["All round breakfast": ["spinach", "eggs", "bacon", "avocados", "toast"],
                 "Garri soakings": ["garri", "milk", "honey"],
                 "Oatmeal": ["instant oatmeal", "milk", "honey"],
                 "Cereal": ["milk", "cereal"],
                 "Jam & Butter on toast": ["jam", "butter", "toast"],
                 "Egg, bacon and avocado wrap": ["eggs", "bacon", "avocado", "tortilla bread"],
                 "Eggs & bacon with Avocado Toast": ["eggs", "bacon", "avocados", "toast"],
                 "Scrambled Eggs & spinach": ["spinach", "eggs"],
                 "indomie": ["indomie"],
                 "Tlapia w/ potatoes & avocado": ["tilapia, potatoes, avocado"],
                 "rice and beef sauce": ["rice", "beef strips", "peppers", "onions", "garlic", "ginger"],
                 "rice and creamy chicken pepper sauce": ["rice", "cooking cream", "peppers", "chicken breast", "onions", "garlic", "onions"],
                 "potatoes w/ broccoli and pork rib": ["potatoes", "broccoli", "pork ribs"],
                 "potatoes w/ broccoli and steak": ["steak", "broccoli", "potatoes"],
                 "rice and egg stew": ["rice", "eggs", "tomatoes", "tomato paste", "peppers", "onions", "garlic", "ginger"],
                 "sweet potatoes and egg stew": ["sweet potatoes", "eggs", "tomatoes", "tomato paste", "peppers", "onions", "garlic", "ginger"],
                 "jollof & chicken": ["rice", "chicken", "tomatoes", "tomato paste", "peppers", "onions", "garlic", "ginger"],
                 "chicken fajita wrap": ["chicken breast", "peppers", "onions", "tortilla bread"],
                 "pesto pasta w/ shrimp": ["pesto", "pasta", "shrimp"],
                 "pesto pasta w/ sausage": ["pesto", "pasta", "sausage"],
                 "alfredo pasta w/ shrimp": ["alfredo sauce", "pasta", "shrimp"],
                 "alfredo pasta w/ sausage": ["alfredo sauce", "pasta", "sausage"],
                 "tomato basil pasta": ["tomato basil sauce", "pasta", "minced meat"]]

// Prompt user for input
print("Enter the ingredients you have:")

// Read user input, exit if input fails
guard let userInput = readLine() else{
    print ("Failed to read input")
    exit(1)
}

// Initialize array to store meals that can be made
var available_meals = [String]()

// Process user input: split by comma, trim whitespace, convert to lowercase
let ingredients = userInput.components(separatedBy: ",").map {
    $0.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
}

// Check each recipe to see if it can be made with available ingredients
for (meal, required_items) in myRecipes{
    if required_items.allSatisfy({ ingredients.contains($0)}){
        available_meals.append(meal)
    }
}

// Suggest a random meal from available options, or inform if no meals can be made
if let suggested_meal = available_meals.randomElement(){
    print("You could make: " + suggested_meal)
    
}else{
    print("Sorry you can't make anything with the items you entered")
}

     
                 
                


