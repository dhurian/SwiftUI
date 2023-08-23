//
//  DailyScrum.swift
//  ScrumDinger
//
//  Created by Dhurian Vitoldas on 23/08/2023.
//

import Foundation

struct DailyScrum{
    var title : String
    var attendees:[String]
    var lengthInMinutes: Int
    var theme: Theme
    
}

//Now we will provide an extension that has sample data.

extension DailyScrum{
    
    static let sampleData:[DailyScrum] = [
        DailyScrum(title:"Design",
                   attendees: ["A1","A2","A3","A4"],
                   lengthInMinutes: 10,
                   theme: .yellow),

        DailyScrum(title:"App Dev",
                   attendees: ["B1","B2","B3","B4"],
                   lengthInMinutes: 15,
                   theme: .orange),
        
        DailyScrum(title:"Web Dev",
                   attendees: ["C1","C2","C3","C4"],
                   lengthInMinutes: 100,
                   theme: .poppy)
    
    
    ]
    
}
