//
//  History.swift
//  Scrumdinger
//
//  Created by Dhurian Vitoldas on 25/09/2023.
//

import Foundation


struct History: Identifiable, Codable {
    var id: UUID
    var date: Date
    var attendees : [DailyScrum.Attendee]
    
    init(id: UUID = UUID(), date: Date = Date(), attendees: [DailyScrum.Attendee]) {
        self.id = id
        self.date = date
        self.attendees = attendees
    }
}
