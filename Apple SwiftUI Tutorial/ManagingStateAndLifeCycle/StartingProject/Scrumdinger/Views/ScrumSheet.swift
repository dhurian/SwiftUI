//
//  ScrumSheet.swift
//  Scrumdinger
//
//  Created by Dhurian Vitoldas on 25/09/2023.
//

import SwiftUI

struct ScrumSheet: View {
    @Binding var isPresentingNewScrumView : Bool
    @Binding var scrums : [DailyScrum]
    @State private var newScrum : DailyScrum = DailyScrum.emptyScrum
    var body: some View {
        NavigationStack{
            DetailEditView(scrum: $newScrum)
                .toolbar{
                    ToolbarItem(placement: .cancellationAction){
                        Button("Dismiss"){
                            isPresentingNewScrumView=false
                        }
                    }
                    ToolbarItem(placement: .confirmationAction ){
                        Button("Add"){
                            
                            scrums.append(newScrum)
                            isPresentingNewScrumView = false
                        }
                    }
                }
            
        }
    }
}

struct ScrumSheet_Previews: PreviewProvider {
    static var previews: some View {
        ScrumSheet(isPresentingNewScrumView: .constant(true), scrums:.constant(DailyScrum.sampleData))
    }
}
