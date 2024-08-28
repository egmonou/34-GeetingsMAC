//
//  MainViewMac.swift
//  Greeting-MAC
//
//  Created by administrator on 28/08/2024.
//
import SwiftUI

struct MainViewMac: View {
    
    @Binding var language: String
    @Binding var layoutDirectionString: String
    
    var body: some View {

        NavigationStack {
            GreetingsView()
                .toolbar {
                    ToolbarItem(placement: .navigation) {
                        LanguageOptionsTapView(
                            language: $language,
                            layoutDirectionString: $layoutDirectionString)
                    }
                }
        }
    }
}

#Preview {
    MainViewMac(language: .constant("en"), layoutDirectionString: .constant(LEFT_To_RIGHT))
}
