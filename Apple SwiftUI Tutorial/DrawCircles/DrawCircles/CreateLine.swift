//
//  CreateLine.swift
//  DrawCircles
//
//  Created by Dhurian Vitoldas on 29/09/2023.
//

import SwiftUI

struct CreateLine: View {
    var twoLines:[Double] = [10.0, 10.0, 300.0, 30.0,
                             200.0, 500.0, 200.0, 20.0]
    var arrayInteger: [Int] = [0, 4]
   
    var body: some View {
        
        
        Path(){ path in
            for i in arrayInteger{
                path.move(to: CGPoint(x: twoLines[i], y: twoLines[i+1]))
                path.addLine(to: CGPoint(x: twoLines[i+2], y: twoLines[i+3]))
            }
            
        }.stroke(lineWidth: 10.0)
            .onTapGesture (coordinateSpace: .local){ location in
                print("Hello")
                print(location)
            }
    }
        


        
        }
    

    

    


struct CreateLine_Previews: PreviewProvider {
    
    
    static var previews: some View {
        CreateLine()
    }
}
