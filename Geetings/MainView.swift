//
//  MainView.swift
//  Geetings
//
//  Created by administrator on 22/08/2024.
//

import SwiftUI
//Portriat = Compact width, regular height
//ipad = Regular width, regular height

struct MainView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    
    var isPortairPhone: Bool {
        horizontalSizeClass == .compact && verticalSizeClass == .regular
    }
    
    var isIPad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    @Binding var language: String
    @Binding var layoutDirectionString: String
    
    var body: some View {
        if isPortairPhone || isIPad {
            //GreetingsView()
            NavigationStack {
                GreetingsView()
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing) {
                            LanguageOptionsTapView(
                                language: $language,
                                layoutDirectionString: $layoutDirectionString)
                        }
                    }
            }
        }else {
            //Landscape mode?
            NavigationStack {
                landscapeGreetingView()
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing) {
                            LanguageOptionsTapView(
                                language: $language,
                                layoutDirectionString: $layoutDirectionString)
                        }
                    }
            }
        }
    }
}

#Preview {
    MainView(language: .constant("en"), layoutDirectionString: .constant(LEFT_To_RIGHT))
}
