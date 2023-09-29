//
//  LineDefinition.swift
//  DrawCircles
//
//  Created by Dhurian Vitoldas on 29/09/2023.
//

import Foundation
import SwiftUI

struct LineDefinition: Shape {
    let startPoint: CGPoint
    let endPoint: CGPoint

    
    func path(in rect: CGRect) -> Path {
        let startPoint = startPoint
        let endPoint = endPoint
        
        return Path { path in
            path.move(to: startPoint)
            path.addLine(to: endPoint)
        }
        
    }
}


