//
//  ContentView.swift
//  ScrumDinger
//
//  Created by Dhurian Vitoldas on 21/08/2023.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {

        VStack{
            ProgressView(value: 10 , total:15)
            HStack{
                VStack(alignment: .leading){
                    Text("Seconds Elapsed")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.tophalf.filled")
                
                }
                Spacer()
                VStack(alignment: .trailing){
                    Text("Seconds Remaining")
                        .font(.caption)
                    Label("600", systemImage: "hourglass.bottomhalf.filled")
                }
                }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time Remaining")
            .accessibilityValue("10 minutes")
            
            Circle()
                .strokeBorder(lineWidth: 24)
            
            HStack{
                Text("Speaker 1 of 3")
                Spacer()
                Button() {
                    
                }label: {
                    Image(systemName: "forward.fill")
                }
            }
            .accessibilityLabel("Next Speaker")
           
            
        }
        .padding()
        
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
