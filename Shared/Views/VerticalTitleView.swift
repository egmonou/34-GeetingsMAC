//
//  VerticalTitleView.swift
//  Geetings
//
//  Created by administrator on 22/08/2024.
//

import SwiftUI

struct VerticalTitleView: View {
    @State private var subtitle: LocalizedStringKey = "Exploring IOS programming"
    
    var body: some View {
        VStack(alignment: .leading) {
           
            GrettingsTextView(subtitile: $subtitle)
                        
            RotatableCireceleView()
            Spacer()
        }.padding(.vertical)
    }
}

#Preview {
    VerticalTitleView()
}
