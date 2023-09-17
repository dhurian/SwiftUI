/*
 See LICENSE folder for this sample’s licensing information.
 */

import SwiftUI
import AVFoundation

struct MeetingView: View {
    @Binding var scrum : DailyScrum
    @StateObject var scrumtimer : ScrumTimer = ScrumTimer()
    private var player : AVPlayer{
        AVPlayer.sharedDingPlayer
    }
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 16.0)
                .fill(scrum.theme.mainColor)
            
            VStack {
                MeetingHeaderView(secondsElapsed: scrumtimer.secondsElapsed, secondsRemaining: scrumtimer.secondsRemaining, theme: scrum.theme)

            
                Circle()
                    .strokeBorder(lineWidth: 24)
                MeetingFooterView(speakers: scrumtimer.speakers, skipAction: scrumtimer.skipSpeaker)
                }
        }
        .padding()
        .foregroundColor(scrum.theme.accentColor)
        .onAppear{
            scrumtimer.reset(lengthInMinutes: scrum.lengthInMinutes, attendees: scrum.attendees)
            scrumtimer.speakerChangedAction = {
                player.seek(to: .zero)
                player.play()
            }
            scrumtimer.startScrum()
            
        }
        .onDisappear{
            scrumtimer.stopScrum()
        }
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct MeetingView_Previews: PreviewProvider {
    
    static var previews: some View {
        MeetingView(scrum: .constant(DailyScrum.sampleData[0]))
    }
}
