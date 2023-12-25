//
//  Item.swift
//  Ghibli
//
//  Created by Deonte Kilgore on 12/24/23.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
