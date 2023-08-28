//
//  DailyScrum.swift
//  ScrumDinger
//
//  Created by Dhurian Vitoldas on 23/08/2023.
//

import Foundation

struct DailyScrum: Identifiable{
    var id:UUID 
    var title : String
    var attendees:[Attendee]
    var lengthInMinutes: Int
    var lengthInMinutesDouble: Double{
        get{
            Double(lengthInMinutes)
        } set{
            lengthInMinutes = Int(newValue)
        }
    }
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme, lengthInMinutesDouble:Double) {
        self.id = id
        self.title = title
        self.attendees = attendees.map { Attendee(name: $0) }
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
        self.lengthInMinutesDouble=lengthInMinutesDouble
    }
}

extension DailyScrum{
    struct Attendee: Identifiable {
        var id:UUID = UUID()
        var name: String

        }
    
static var emptyScrum: DailyScrum{
    DailyScrum(title: "", attendees: [], lengthInMinutes: 5, theme: .sky, lengthInMinutesDouble: 5.0)
    }


}

//Now we will provide an extension that has sample data.
extension DailyScrum{
    
    static let sampleData:[DailyScrum] = [
        DailyScrum(title:"Design",
                   attendees: ["A1", "A2", "A3", "A4", "A5"],
                   lengthInMinutes: 10,
                   theme: .yellow, lengthInMinutesDouble: 10.0),

        DailyScrum(title:"App Dev",
                   attendees: ["B1","B2","B3","B4"],
                   lengthInMinutes: 15,
                   theme: .orange, lengthInMinutesDouble: 15.0),
        
        DailyScrum(title:"Web Dev",
                   attendees: ["C1","C2","C3","C4"],
                   lengthInMinutes: 100,
                   theme: .poppy, lengthInMinutesDouble: 100.0)
    
    
    ]
    
}
