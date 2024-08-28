

import Foundation
import TipKit

struct GreetingsTip: Tip {
    var title: Text {
        Text("Click on the text and dick")
    }
    var message: Text? {
        Text("Text Will be randomly generatd and observe nice animations!")
    }
    var asset: Image? {
        Image(systemName: "figure.walk")
    }
}
