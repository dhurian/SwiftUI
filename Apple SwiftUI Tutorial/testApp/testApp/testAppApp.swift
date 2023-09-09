//
//  testAppApp.swift
//  testApp
//
//  Created by Dhurian Vitoldas on 03/09/2023.
//

import SwiftUI

@main
struct testAppApp: App {
    var body: some Scene {
        WindowGroup {
            TabView{
                ContentView()
                    .tabItem{
                        
                        Label("Screen1", systemImage:"calendar")
                    }
                
                ScreenTwo()
                    .tabItem{
                        Label("Screen2", systemImage: "house")
                    }
                    
            }
        }
    }
}
