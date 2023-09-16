//
//  ContentView.swift
//  ScrumDingerV2
//
//  Created by Dhurian Vitoldas on 09/09/2023.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(value: 10.0, total: 15)
            HStack{
                VStack(alignment: .leading){
                    Text("Seconds Elpsed")
                    Label("300", systemImage: "hourglass.tophalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing){
                    Text("Seconds Remaining")
                    Label("600", systemImage: "hourglass.bottomhalf.fill")
                        
                }
                
            }.font(.caption)
            
            Circle()
                .strokeBorder(lineWidth: 24.0)
            HStack{
                Text("Speaker 1 of 3")
                Spacer()
                Button(action: {}){
                    Image(systemName: "forward.fill")
                }
            }
            

           
            
        }
        .padding()

    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
