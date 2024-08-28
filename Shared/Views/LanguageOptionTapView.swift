//
//  LanguageOptionsTapView.swift
//  Geetings
//
//  Created by administrator on 24/08/2024.
//

import SwiftUI


struct LanguageOptionsTapView: View {
    @Binding var language: String
    @Binding var layoutDirectionString: String
    
    var body: some View {
        
        Menu {
            Button("English") {
                language = "en"
                layoutDirectionString = LEFT_To_RIGHT
            }
            Button("Spanish") {
                language = "es"
                layoutDirectionString = LEFT_To_RIGHT
            }
            Button("Arabic") {
                language = "ar"
                layoutDirectionString = RIGHT_TO_LEFT
            }
        } label: {
            Image(systemName: "gearshape.fill")
                .foregroundStyle(.black)
        }
    }
}


#Preview {
    LanguageOptionsTapView(language: .constant("en"), layoutDirectionString: .constant(LEFT_To_RIGHT))
}
