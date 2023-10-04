//
//  ZoomGesture.swift
//  DrawCircles
//
//  Created by Dhurian Vitoldas on 30/09/2023.
//

import SwiftUI

struct ZoomGesture: View {
    @State private var totalZoom = 1.0
    @State private var currentZoom = 0.0
    @State private var location1 = UnitPoint.center
    var body: some View {
        ScrollView{
            Image("Singapore")
                .scaleEffect(totalZoom+currentZoom, anchor: location1)
                .gesture(
                    MagnifyGesture()
                        .onChanged{ value in
                            currentZoom = value.magnification - 1
                            location1 = value.startAnchor
                            
                        }
                        .onEnded{ value in
                            totalZoom+=currentZoom
                            currentZoom = 0.0
                        }
                )
            
                .accessibilityZoomAction { action in
                    if action.direction == .zoomIn {
                        totalZoom += 1
                    } else {
                        totalZoom -= 1
                    }
                }
        }.frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 800)
   
        
    }
}


#Preview {
    ZoomGesture()
}
