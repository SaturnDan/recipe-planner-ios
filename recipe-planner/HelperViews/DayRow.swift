//
//  DayRow.swift
//  recipe-planner
//
//  Created by Dan Malyaris on 1/2/2023.
//

import SwiftUI

struct DayRow: View {
    var dayName: String = "Monday"
    
    @State var backgroundColour: Color = Color.red
    var body: some View {
        Rectangle()
            .background(backgroundColour)
            .frame(width: .infinity, height: 200)
            
        
            .onAppear{
                switch dayName {
                case "Monday":  backgroundColour = Color.red
                case "Tuesday":  backgroundColour =  Color.red
                case "Wednesday": backgroundColour =  Color.red
                case "Thursday":  backgroundColour = Color.red
                case "Friday":  backgroundColour = Color.red
                case "Saturday":  backgroundColour = Color.red
                case "Sunday":  backgroundColour = Color.red
                default:  backgroundColour = Color.red
                }
            }
    }
    
}

struct DayRow_Previews: PreviewProvider {
    static var previews: some View {
        DayRow(dayName: "Tuesday")
    }
}
