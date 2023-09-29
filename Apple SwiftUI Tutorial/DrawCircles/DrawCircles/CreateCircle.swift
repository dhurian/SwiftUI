//
//  CreateCircle.swift
//  DrawCircles
//
//  Created by Dhurian Vitoldas on 29/09/2023.
//

import SwiftUI

struct CreateCircle: View {

    @Binding var circleObject: CircleDefinition
    
    var body: some View {
        
        Circle()
            .stroke(Color.blue, lineWidth: circleObject.tickness)
            .opacity(circleObject.opacityCircle)
            .frame(width: circleObject.frameWidth,
                   height: circleObject.frameHeigth, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .position(CGPoint(x: circleObject.centerLocationX,
                              y: circleObject.centerLocationY))
    }
}




struct CreateCircle_Previews: PreviewProvider {
    
    
    static var previews: some View {
        CreateCircle(circleObject: .constant(CircleDefinition.definedCircle))
    }
}
