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
        NavigationStack{
            List(scrums,id:\.title){ scrum in
                NavigationLink(destination: DetailView(scrum:scrum))    {            CardView(scrum: scrum)
                        
                }.listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily Scrums")
            .toolbar{
                Button(action:{}){
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New Scrum")
            }
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        let scrums:[DailyScrum] = DailyScrum.sampleData
        ScrumsView(scrums: scrums)
    }
}