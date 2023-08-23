//
//  Theme.swift
//  ScrumDinger
//
//  Created by Dhurian Vitoldas on 23/08/2023.
//

import SwiftUI

enum Theme: String {
    case bubblegum
    case buttercup
    case indigo
    case lavender
    case magenta
    case navy
    case orange
    case oxblood
    case periwinkle
    case poppy
    case seafoam
    case purple
    case sky
    case tan
    case teal
    case yellow
    
    
    
    var accentColor: Color {
        switch self {
        case .bubblegum, .buttercup, .lavender, .orange, .periwinkle, .poppy, .seafoam, .sky, .tan, .teal, .yellow: return .black
        case .indigo, .magenta, .navy, .oxblood, .purple : return .white
        }
        
    }
    
    
    var mainColor : Color {
        Color(rawValue)
    }
    
}
