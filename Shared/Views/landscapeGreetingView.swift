//
//  landscapeGreetingView.swift
//  Geetings
//
//  Created by administrator on 21/08/2024.
//

import SwiftUI

struct landscapeGreetingView: View {
        var body: some View {
            ZStack {
                LinearGradientView()
                HStack() {
                    VerticalTitleView()
                    Spacer()
                    MessagesView()
                }
                .padding()
            }
        }
}


#Preview {
    landscapeGreetingView()
}
