//
//  ScrumsView.swift
//  ScrumDinger
//
//  Created by Dhurian Vitoldas on 26/08/2023.
//

import SwiftUI

struct ScrumsView: View {
    let scrums:[DailyScrum]
    var body: some View {
        List(scrums,id:\.title){ scrum in
            CardView(scrum: scrum)
                .listRowBackground(scrum.theme.mainColor)
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        let scrums:[DailyScrum] = DailyScrum.sampleData
        ScrumsView(scrums: scrums)
    }
}
