//
//  DataItemModel.swift
//  Geetings
//
//  Created by administrator on 17/08/2024.
//

import Foundation
import SwiftUI

struct DataItemModel: Identifiable {
    let id = UUID()
    let vText: LocalizedStringKey
    let vColor: Color
}
