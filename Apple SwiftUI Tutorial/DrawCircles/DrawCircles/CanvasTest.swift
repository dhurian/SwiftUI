//
//  ZoomOperation.swift
//  DrawCircles
//
//  Created by Dhurian Vitoldas on 29/09/2023.
//

import SwiftUI

struct CanvasTest: View {
    @State var canvasHeigth = CGFloat(100.0)
    @State var canvasWidth = CGFloat( 100.0)
    var body: some View {
        
        ScrollView([.horizontal,.vertical], showsIndicators: false ){
                Canvas(opaque: true) { context, size in
                
                    var squarePath = Path()
                    squarePath.move(to: CGPoint(x: 50, y: 50))
                    squarePath.addLine(to: CGPoint(x: 10000, y: 50000))
                    context.stroke(squarePath, with:.color(.yellow), lineWidth: 10.0)
                    
                    let newSize = size.applying(.init(scaleX: CGFloat(0.5), y: CGFloat(0.5)))
                    canvasWidth  = size.width
                    canvasHeigth = size.height
                    let rect = CGRect(origin: CGPoint(x: size.width/2, y: size.height/2), size: CGSize(width: 50, height: 50))
                    let circle1 = Circle().path(in: rect)
                    
                    context.stroke(circle1, with: .color(.red), lineWidth:10.0)
                    
                    
                        
                        
                
            }.frame(width: 5000 , height: 5000)
        }
    }
}


#Preview {
    CanvasTest()
}
