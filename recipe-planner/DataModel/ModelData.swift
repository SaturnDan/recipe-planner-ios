//
//  ModelData.swift
//  recipe-planner
//
//  Created by Dan Malyaris on 1/2/2023.
//

import Foundation
import SwiftUI
import Alamofire

final class ModelData: ObservableObject {
    @Published var weekPlan = [DayModel]()
    @Published var ingredientList = [Ingredient]()
    @Published var recipesList = [Recipe]()
    
    func loadWeeklyPlan() {
        for index in 1...7 {
            switch index {
            case 1: weekPlan.append(DayModel(dayName: "Monday"))
            case 2: weekPlan.append(DayModel(dayName: "Tuesday"))
            case 3: weekPlan.append(DayModel(dayName: "Wednesday"))
            case 4: weekPlan.append(DayModel(dayName: "Thursday"))
            case 5: weekPlan.append(DayModel(dayName: "Friday"))
            case 6: weekPlan.append(DayModel(dayName: "Saturday"))
            case 7: weekPlan.append(DayModel(dayName: "Sunday"))
            default: weekPlan.append(DayModel(dayName: "Monday"))
            }
        }
    }
}
