
import SwiftUI

struct MessagesView: View {
    var body: some View {
        
        let messeages: [DataItemModel] = [
            .init(vText: "Welcome to Swift Programming", vColor: .orange),
            .init(vText: "Are you ready to?", vColor: Color("myGreen")),
            .init(vText: "Start Exploring", vColor: .yellow),
            .init(vText: "Hellow", vColor: Color("myRed"))
//            .init(vText: "Boom", vColor: Color("myPurple")),
//            .init(vText: "I love", vColor: .cyan),
//            .init(vText: "Programming", vColor: .indigo)
        ]

        
        VStack (alignment: .leading){
            ForEach(messeages) { messeage in
                TextView(vText: messeage.vText, vColor: messeage.vColor)
            }
        }
    }
}

#Preview {
    MessagesView()
}
