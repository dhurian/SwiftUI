//
//  ContentView.swift
//  testApp
//
//  Created by Dhurian Vitoldas on 03/09/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Screen one")
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
        .background(.green)
        .clipped()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
