//
//  ScrumDingerV2App.swift
//  ScrumDingerV2
//
//  Created by Dhurian Vitoldas on 09/09/2023.
//

import SwiftUI

@main
struct ScrumDingerV2App: App {
    @State private var scrums:[DailyScrum] =  DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
