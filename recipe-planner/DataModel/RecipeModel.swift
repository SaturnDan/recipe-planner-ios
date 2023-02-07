//
//  RecipeModel.swift
//  recipe-planner
//
//  Created by Dan Malyaris on 1/2/2023.
//

import Foundation
import SwiftUI

struct Recipe: Codable, Identifiable, Hashable {
    var id = UUID()
    let recipeName: String
    let longDescription: String
    let shortDescription: String
    let ingredients: [IngredientSections]
    let imageURL: String
    let tags: [Tags]
    let stepsSimple: [Sections]
    let stepsDetailed: [Sections]
    let recipeData: RecipeData
    let furtherInfo: String
    var isFavourite: Bool = false
    
    init(longDescription: String, shortDescription: String, stepsDetailed: [Sections], tags: [Tags], stepsSimple: [Sections], furtherInfo: String, ingredients: [IngredientSections], imageURL: String, recipeData: RecipeData, recipeName: String, isFavourite: Bool = false) {
            self.id = UUID()
            self.longDescription = longDescription
            self.shortDescription = shortDescription
            self.stepsDetailed = stepsDetailed
            self.tags = tags
            self.stepsSimple = stepsSimple
            self.furtherInfo = furtherInfo
            self.ingredients = ingredients
            self.imageURL = imageURL
            self.recipeData = recipeData
            self.recipeName = recipeName
            self.isFavourite = isFavourite
        }
    
    static var `default` = Recipe(longDescription: "This is the long description", shortDescription: "This is the short description", stepsDetailed: [Sections(sectionName: "First step section", sectionSteps: [Step(stepInstruction: "This is the step instruction")])], tags: [Tags(tagName: "Tag")], stepsSimple: [Sections(sectionName: "First step section", sectionSteps: [Step(stepInstruction: "This is the step instruction")])], furtherInfo: "Further information about the recipe", ingredients: [IngredientSections(sectionName: "Ingredient Section", sectionIngredients: [IngredientData(amount: "1", unit: "Cup", ingredient: Ingredient(name: "Flour", category: "Baking"))])], imageURL: "https://murmursofricotta.com/wp-content/uploads/2022/04/Neapolitan-Pizza_-4.webp", recipeData: RecipeData(cookTime: "1 hour", difficulty: "easy", prepTime: "20 minutes"), recipeName: "Test Pizza", isFavourite: false)
}

struct Tags: Codable, Hashable {
    var tagName: String
}

struct IngredientSections: Codable, Hashable {
    var sectionName: String
    var sectionIngredients: [IngredientData]
}

struct IngredientData: Codable, Hashable {
    var amount: String
    var unit: String
    var ingredient: Ingredient
}

struct Ingredient: Codable, Identifiable, Hashable {
    var id = UUID()
    var name: String
    var category: String
}

struct Sections: Codable, Hashable {
    var sectionName: String
    var sectionSteps: [Step]
}

struct Step: Codable, Hashable {
    var stepInstruction: String
}

struct RecipeData: Codable, Hashable {
    let cookTime: String
    let difficulty: String
    let prepTime: String
    
}
