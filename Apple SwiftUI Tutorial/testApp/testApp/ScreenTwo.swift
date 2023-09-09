//
//  ScreenTwo.swift
//  testApp
//
//  Created by Dhurian Vitoldas on 04/09/2023.
//

import SwiftUI

struct ScreenTwo: View {
    var body: some View {
        ZStack{
            VStack{
                Text("ScreenTwo")
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.red)
        .clipped()
        }
}

struct ScreenTwo_Previews: PreviewProvider {
    static var previews: some View {
        ScreenTwo()
    }
}
