//
//  ErrorView.swift
//  Scrumdinger
//
//  Created by Dhurian Vitoldas on 28/09/2023.
//

import SwiftUI

struct ErrorView: View {
    
    let errorWrapper: ErrorWrapper
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationStack{
            ZStack {
                VStack{
                    Text("An Error has ocurred")
                        .font(.title)
                        .padding()
                    Text(errorWrapper.error.localizedDescription)
                        .font(.headline)
                        .padding()
                    Text(errorWrapper.guidance)
                        .font(.caption)
                        .padding()
                    Spacer()
                    
                }
                .padding()
            }
            .background(.ultraThinMaterial)
            .cornerRadius(16.0)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button("Dismiss"){
                        dismiss()
                    }
                }
                
            }
        }
    }
}

struct ErrorView_Previews: PreviewProvider{
    
    enum SampleError: Error {
        case errorRequired
    }
    
    static var wrapper : ErrorWrapper {
        ErrorWrapper(error: SampleError.errorRequired, guidance: "you can safely ignore this error")
    }
    static var previews: some View{
        ErrorView(errorWrapper: wrapper)
    }
}
