//
//  Film.swift
//  Ghibli
//
//  Created by Deonte Kilgore on 12/26/23.
//

import Foundation

struct Film: Codable, Identifiable {
    var id: String
    var title: String
    var originalTitle: String
    var originalTitleRomanised: String
    var image: String
    var movieBanner: String
    var description: String
    var director: String
    var producer: String
    var releaseDate: String
    var runningTime: String
    var rtScore: String
    var people: [String]
    var species: [String]
    var locations: [String]
    var vehicles: [String]
    var url: String
}
