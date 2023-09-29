//
//  Gestures.swift
//  DrawCircles
//
//  Created by Dhurian Vitoldas on 29/09/2023.
//

import SwiftUI

struct Gestures: View {
    @State var color: Color=Color.primary
    
    var tapGesture: some Gesture{
        TapGesture()
            .onEnded{
                color = Color.random()
            }
    }

    
    var body: some View {
        Rectangle()
            .foregroundColor(color)
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
            .gesture(tapGesture)
    }
}

#Preview {
    Gestures()
}
extension Color {
    static func random() -> Color {
        return Color(red: Double.random(in: 0...1), green: Double.random(in: 0...1), blue: Double.random(in: 0...1))
    }
}
