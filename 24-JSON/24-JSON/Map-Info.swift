//
//  Map-Info.swift
//  24-JSON
//
//

import Foundation

struct Cards: Codable {
    let cards: [Card]
}

struct Card: Codable {
    let name: String?
    let artist: String?
    let manaCost: String?
    let setName: String?
    let type: String?
}
