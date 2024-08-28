//
//  GrettingsTextView.swift
//  Geetings
//
//  Created by administrator on 21/08/2024.
//

import SwiftUI

struct GrettingsTextView: View {
    
    @Binding var subtitile: LocalizedStringKey
    
    let subtitiles: [LocalizedStringKey] = [
        "Exploring IOS programming",
        "Learn how to bake",
        "Programming recipes",
        "I love Programming",
        "Think as programmer"
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Greeting")
                .font(.largeTitle)
                .fontWeight(.semibold)
            #if os(macOS)
            Text(subtitile)
                .font(.title)
            #elseif os(iOS)
            Text(subtitile)
                .font(.headline)
                .fontWeight(.thin)
            #endif
            
            #if os(macOS)
            Text("MAC APP")
            #elseif os(iOS)
            Text("IOS APP")
            #endif
        }
        .onTapGesture {
            //change subtitile
            subtitile = subtitiles.randomElement() ?? LocalizedStringKey("IOS")
        }
    }
}

#Preview {
    GrettingsTextView(subtitile: .constant("Exploring IOS programming"))
}
