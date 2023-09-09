//
//  ContentView.swift
//  TestStatesAndBindings
//
//  Created by Dhurian Vitoldas on 05/09/2023.
//

import SwiftUI
import Foundation

struct ContentView: View {
    @State var personNames: [Person] = people
    @State var personName: Person = people[0]

    var body: some View {
        VStack {
           List(personNames) { name in
               HStack{
                   /*@START_MENU_TOKEN@*/Text(name.idName)/*@END_MENU_TOKEN@*/
                   Text(name.idSurname)
               }
                
            }
            ChangePersonName(personName: $personName, peopleList: $personNames)

            
            
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ChangePersonName: View{
    @Binding var personName: Person
    @Binding var peopleList:[Person]

    var body: some View{
            
        VStack(alignment: .center){
            TextField("Name", text: $personName.idName)
            TextField("Name", text: $personName.idSurname)

          
        }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
    }
}

