//
//  ContentView.swift
//  DrawCircles
//
//  Created by Dhurian Vitoldas on 28/09/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var drawCircle: CircleDefinition = CircleDefinition(id: UUID(), tickness: 20, opacityCircle: 0.5, frameWidth: 200, frameHeigth: 200, centerLocationX: 200, centerLocationY: 200)
    
    var body: some View {
        
        VStack {
            
            CreateCircle(circleObject: $drawCircle)

            
        }
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        let drawCircle1: CircleDefinition = CircleDefinition(id: UUID(), tickness: 20, opacityCircle: 0.5, frameWidth: 200, frameHeigth: 200, centerLocationX: 200, centerLocationY: 200)
        
        ContentView(drawCircle: drawCircle1)
    }
}
