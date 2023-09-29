//
//  ScrollView.swift
//  DrawCircles
//
//  Created by Dhurian Vitoldas on 29/09/2023.
//

import SwiftUI

struct Scrolling: View {

        var body: some View {
            ScrollView([.horizontal, .vertical]) {
               Text("Hello World")
                }
            .defaultScrollAnchor(.center)
            
        }
}

#Preview {
    Scrolling()
}
