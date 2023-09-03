//
//  ThemeView.swift
//  ScrumDinger
//
//  Created by Dhurian Vitoldas on 03/09/2023.
//

import SwiftUI

struct ThemeView: View {
    
    let theme: Theme
    var body: some View {
        Text(theme.name)
            .padding(4.0)
            .frame(maxWidth: .infinity)
            .background(theme.mainColor)
            .clipShape(RoundedRectangle(cornerRadius: 4))
            .foregroundColor(theme.accentColor)
            
            
    }
}

struct ThemeView_Previews: PreviewProvider {
    static var previews: some View {
        
        ThemeView(theme: .buttercup)
    }
}