//
//  DrawCirclesAndLines.swift
//  DrawCircles
//
//  Created by Dhurian Vitoldas on 30/09/2023.
//

import SwiftUI

struct DrawCirclesAndLines: View {
    @State var circleSelected:Bool = false
    @State var lineSelected: Bool = false
    @State var selectedItem: String = "Nothing Selected"
    var body: some View {
        
        NavigationStack{
            VStack{
                Text(selectedItem)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .navigationTitle("Hello")
                    .toolbar{
                        ToolbarItemGroup(placement: .bottomBar){
                            Button("Circle"){
                                selectedItem = "Circle has been Selected"
                                circleSelected = true
                                lineSelected = false
                            }
                            
                            Button("Line"){
                                selectedItem = "Line has been Selected"
                                circleSelected = false
                                lineSelected = true
                            }
                        }
                    }
                Spacer()
            }.padding()
            
            
        }
    }
}

#Preview {
    DrawCirclesAndLines()
}
