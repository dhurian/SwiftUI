//
//  DrawLines.swift
//  DrawCircles
//
//  Created by Dhurian Vitoldas on 29/09/2023.
//

import SwiftUI

struct DrawLines: View {
    @State var lineStart: CGPoint = CGPoint.zero
    @State var lineEnd: CGPoint = CGPoint.zero
    @State var lineSet:[CGPoint] = []

    var lineDrawingGesture: some Gesture{
        DragGesture()
            
            .onChanged{ value in
                lineStart = value.startLocation
                lineEnd = value.location
            }
            .onEnded{ value in
                lineEnd = value.location
                lineStart = value.startLocation
                lineSet.append(lineStart)
                lineSet.append(lineEnd)
            }
    }
    var body: some View {
        ZStack{
            Path{ path in
                path.move(to: lineStart)
                path.addLine(to: lineEnd)
            }
            .stroke(lineWidth: 2.0)
            .contentShape(Rectangle())
            .gesture(lineDrawingGesture)
            
            Path{ path2 in
                for j in stride(from: 0, to: lineSet.count, by: 2){
                    path2.move(to: lineSet[j])
                    path2.addLine(to: lineSet[j+1])
                }
            }.stroke(lineWidth: 5.0)
        }
        Text("\(lineSet.count)")
            
    }
}

#Preview {
    DrawLines()
}
