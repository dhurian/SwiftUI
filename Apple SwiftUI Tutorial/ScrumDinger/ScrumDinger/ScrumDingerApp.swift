//
//  ScrumDingerApp.swift
//  ScrumDinger
//
//  Created by Dhurian Vitoldas on 21/08/2023.
//

import SwiftUI

@main
struct ScrumDingerApp: App {
    @State var scrums = DailyScrum.sampleData

    var body: some Scene {
        WindowGroup {
            
            
                ScrumsView(scrums: $scrums)
            
        }
    }
}
