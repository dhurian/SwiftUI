//
//  MeetingHeaderView.swift
//  Scrumdinger
//
//  Created by Dhurian Vitoldas on 17/09/2023.
//

import SwiftUI

struct MeetingHeaderView: View {
    let secondsElapsed : Int
    let secondsRemaining : Int
    let theme : Theme
    private var totalSeconds: Int {
        secondsElapsed+secondsRemaining
    }
    
    private var progress: Double {
        if(secondsRemaining == 0){
            return 1.0
        } else{
          return  Double(secondsElapsed)/Double(secondsRemaining)
        }
    }
    
    private var minutesRemaining : Int {
       Int(secondsRemaining/60)
    }
    
    var body: some View {
        VStack {
            ProgressView(value: progress)
                .progressViewStyle(ScrumProgressViewStyle(theme: theme))
            HStack {
                VStack(alignment: .leading) {
                    Text("Seconds Elapsed")
                        .font(.caption)
                    Label("\(secondsElapsed)", systemImage: "hourglass.tophalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Seconds Remaining")
                        .font(.caption)
                    Label("\(secondsRemaining)", systemImage: "hourglass.bottomhalf.fill")
                        .labelStyle(.trailingIcon)

                }
            }
        }
        .accessibilityElement(children: .ignore)
        .accessibilityLabel("Time remaining")
        .accessibilityValue("\(minutesRemaining) minutes")
        .padding([.top, .horizontal])
    }
}
struct MeetingHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingHeaderView(secondsElapsed: 60, secondsRemaining: 180, theme: .yellow)
            .previewLayout(.sizeThatFits)
    }
}
