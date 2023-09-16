//
//  ScrumsView.swift
//  ScrumDingerV2
//
//  Created by Dhurian Vitoldas on 09/09/2023.
//

import SwiftUI

struct ScrumsView: View {
    @Binding var scrums: [DailyScrum]
    
    var body: some View {
        NavigationStack{
        List($scrums){ $scrum in
            NavigationLink(destination: DetailView(scrum: $scrum)){
                CardView(scrum: scrum)
                    
            }
            .listRowBackground(scrum.theme.mainColor)
            }
        .navigationTitle("Daily Scrums")
        .toolbar{
            Button(action: {}){
                            Image(systemName: "plus")
                        }

        }
        }
        
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var scrums:[DailyScrum] =  DailyScrum.sampleData
    static var previews: some View {
        ScrumsView(scrums: .constant(scrums))
    }
}
