//
//  CircleDefinition.swift
//  DrawCircles
//
//  Created by Dhurian Vitoldas on 29/09/2023.
//

import Foundation
import SwiftUI

struct CircleDefinition: Identifiable{
        var id: UUID
        var tickness: Double
        var opacityCircle: Double
        var frameWidth: CGFloat
        var frameHeigth: CGFloat
        var centerLocationX: CGFloat
        var centerLocationY: CGFloat
    
    init(id: UUID , tickness: Double, opacityCircle: Double, frameWidth: CGFloat, frameHeigth: CGFloat, centerLocationX: CGFloat, centerLocationY: CGFloat) {
        self.id = UUID()
        self.tickness = tickness
        self.opacityCircle = opacityCircle
        self.frameWidth = frameWidth
        self.frameHeigth = frameHeigth
        self.centerLocationX = centerLocationX
        self.centerLocationY = centerLocationY
    }



}


extension CircleDefinition {
    static let definedCircle: CircleDefinition = CircleDefinition(id: UUID(), tickness: 1.0, opacityCircle: 1.0, frameWidth: 100.0, frameHeigth: 100.0, centerLocationX: 100.0, centerLocationY: 100.0)
}



