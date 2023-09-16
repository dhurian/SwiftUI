//
//  CardView.swift
//  ScrumDingerV2
//
//  Created by Dhurian Vitoldas on 09/09/2023.
//

import SwiftUI

struct CardView: View {
    
    let scrum: DailyScrum
    
    var body: some View {
        VStack(alignment: .leading){
            Text(scrum.title)
                .font(.headline)
                .background(scrum.theme.mainColor)
            Spacer()
            HStack{
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: "clock")
                    .padding(.trailing, 20.0)
                
            }.font(.caption)
        }
        .padding()
        .foregroundColor(scrum.theme.accentColor)
    }
}

struct CardView_Previews: PreviewProvider {
    static var scrum: DailyScrum = DailyScrum.sampleData[0]
    
    static var previews: some View {
        CardView(scrum: scrum)
            .background(scrum.theme.mainColor)
            .previewLayout(.fixed(width: 400.0, height: 60.0))
            
    }
}
