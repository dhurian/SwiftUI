//
//  LocatePosition.swift
//  DrawCircles
//
//  Created by Dhurian Vitoldas on 30/09/2023.
//

import SwiftUI

struct LocatePosition: View {
    @State var circle1: CircleDefinition = CircleDefinition(id: UUID(), tickness: 2.0, opacityCircle: 1.0, frameWidth: 500.0, frameHeigth: 500.0, centerLocationX: 100.0, centerLocationY: 100.0)
   
    var body: some View {
        ZStack{
            Canvas{ graphicsContext, gcSize in
                
                var line1=Path()
                line1.move(to: CGPoint(x: 10.0, y: 10.0))
                line1.addLine(to: CGPoint(x: 100.0, y: 100.0))
                
                graphicsContext.stroke(line1, with: .color(.blue), lineWidth: 2.0)
            }.onTapGesture { location in
                print(location)

                    
            }
        }
    }
}

#Preview {
    LocatePosition()
}
