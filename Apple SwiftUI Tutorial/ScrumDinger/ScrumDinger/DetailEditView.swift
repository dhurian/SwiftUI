//
//  DetailEditView.swift
//  ScrumDinger
//
//  Created by Dhurian Vitoldas on 28/08/2023.
//

import SwiftUI

struct DetailEditView: View {
    
    //@State private var scrum: DailyScrum = DailyScrum.emptyScrum
    @Binding var scrum: DailyScrum
    @State private var newAttendeeName: String = ""
    
    var body: some View {
        
        Form{
            Section(header: Text(
                "Meeting Info")){
                    
                    TextField("Meeting Title", text: $scrum.title)
                    
                    HStack{
                        Slider(value: $scrum.lengthInMinutesDouble, in:5...30, step:1){
                            Text("Length")
                        }
                        Spacer()
                        Text("\(scrum.lengthInMinutes) minutes")
                    }
                    ThemePicker(selection: $scrum.theme)
                }
            Section(header: Text("Attendees")){
                ForEach(scrum.attendees){ attendee in
                    
                    Text(attendee.name)
                }
                .onDelete{ indices in scrum.attendees.remove(atOffsets: indices)
                }
                HStack{
                    TextField("New Attendee", text: $newAttendeeName)
                    Button( action: {
                        withAnimation{
                            let attendee = DailyScrum.Attendee(name: newAttendeeName)
                            scrum.attendees.append(attendee)
                            newAttendeeName=""
                        }
                    }) {
                        Image(systemName: "plus.circle.fill")
                    }
                }
                    
                }
            }
        }
    }


struct DetailEditView_Previews: PreviewProvider {
    static var previews: some View {
        
        DetailEditView(scrum: .constant(DailyScrum.sampleData[0]))
    }
}
