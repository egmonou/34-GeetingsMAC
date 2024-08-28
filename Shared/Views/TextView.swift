//
//  TextView.swift
//  Geetings
//
//  Created by administrator on 17/08/2024.
//

import SwiftUI




struct TextView: View {
    
    let vText: LocalizedStringKey
    @State var vColor: Color
    
    var colors: [Color] = [.red, .green, .blue, .orange, .yellow, .purple,
                          Color(red: 0.5, green: 0.5, blue: 0.5),
                          Color(red: 0, green: 0, blue: 0.5),
                          Color(red: 139/255, green: 207/255, blue: 240/255),
                          Color(red: 1, green: 215/255, blue: 0)
    ]
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    
    var isIPad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    var cfont: Font {
        isIPad ? .largeTitle : .body
    }
    
    var body: some View {
        Text(vText)
            .font(cfont)
            .fontWeight(.semibold)
            .padding()
            //.foregroundStyle(Color.white)
            .background(vColor.opacity(0.4))
            .cornerRadius(20.0)
            .shadow(color: vColor, radius: 5, x:10, y: 10)
            .onTapGesture {
                //randmoy change the color
                vColor = colors.randomElement() ?? .red

                
            }
    }
}

#Preview {
    VStack {
        TextView(vText: "Hello There", vColor: .green)
        TextView(vText: "Hummes", vColor: .blue)
        TextView(vText: "piece", vColor: .purple)
    }
}
