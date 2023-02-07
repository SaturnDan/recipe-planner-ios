//
//  DayModel.swift
//  recipe-planner
//
//  Created by Dan Malyaris on 2/2/2023.
//

import Foundation

struct DayModel: Codable, Identifiable, Hashable {
    var id = UUID()
    var dayName: String = ""
    var setRecipe: Recipe?
}
