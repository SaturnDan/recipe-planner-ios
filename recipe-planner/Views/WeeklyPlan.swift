//
//  WeeklyPlan.swift
//  recipe-planner
//
//  Created by Dan Malyaris on 1/2/2023.
//

import SwiftUI

struct WeeklyPlan: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationStack{
            ScrollView{
                ForEach(modelData.weekPlan, id:\.self){day in
                    DayRow(dayName: day.dayName)
                }
            }
            .navigationTitle("Week Plan")
        }
        
    }
}

struct WeeklyPlan_Previews: PreviewProvider {
    static var previews: some View {
        WeeklyPlan()
            .environmentObject(ModelData())
    }
}
