//
//  Message.swift
//  Chat-app
//
//  Created by Mateusz Rybczyński on 13/11/2023.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: String
    var Text: String
    var recived: Bool
    var  timestamp: Date
}
