//
//  ScrumDingerApp.swift
//  ScrumDinger
//
//  Created by Dhurian Vitoldas on 21/08/2023.
//

import SwiftUI

@main
struct ScrumDingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
            //MeetingView()
            //CardView(scrum: DailyScrum.sampleData[0])
        }
    }
}
