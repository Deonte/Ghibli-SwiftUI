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
    
    #if DEBUG
    static func previewFilm() -> Film {
       return Film(id: "0440483e-ca0e-4120-8c50-4c8cd9b965d6",
                   title: "Princess Mononoke",
                   originalTitle: "\u{3082}\u{306e}\u{306e}\u{3051}\u{59eb}",
                   originalTitleRomanised: "Mononoke hime",
                   image: "https://image.tmdb.org/t/p/w600_and_h900_bestv2/jHWmNr7m544fJ8eItsfNk8fs2Ed.jpg",
                   movieBanner: "https://image.tmdb.org/t/p/original/6pTqSq0zYIWCsucJys8q5L92kUY.jpg",
                   description: "Ashitaka, a prince of the disappearing Ainu tribe, is cursed by a demonized boar god and must journey to the west to find a cure. Along the way, he encounters San, a young human woman fighting to protect the forest, and Lady Eboshi, who is trying to destroy it. Ashitaka must find a way to bring balance to this conflict.",
                   director: "Hayao Miyazaki",
                   producer: "Toshio Suzuki",
                   releaseDate: "1997",
                   runningTime: "134",
                   rtScore: "93",
                   people: [
                    "https://ghibliapi.dev/people/ba924631-068e-4436-b6de-f3283fa848f0",
                    "https://ghibliapi.dev/people/ebe40383-aad2-4208-90ab-698f00c581ab",
                    "https://ghibliapi.dev/people/030555b3-4c92-4fce-93fb-e70c3ae3df8b",
                    "https://ghibliapi.dev/people/ca568e87-4ce2-4afa-a6c5-51f4ae80a60b",
                    "https://ghibliapi.dev/people/e9356bb5-4d4a-4c93-aadc-c83e514bffe3",
                    "https://ghibliapi.dev/people/34277bec-7401-43fa-a00a-5aee64b45b08",
                    "https://ghibliapi.dev/people/91939012-90b9-46e5-a649-96b898073c82",
                    "https://ghibliapi.dev/people/20e3bd33-b35d-41e6-83a4-57ca7f028d38",
                    "https://ghibliapi.dev/people/8bccdc78-545b-49f4-a4c8-756163a38c91",
                    "https://ghibliapi.dev/people/116bfe1b-3ba8-4fa0-8f72-88537a493cb9"
                  ],
                   species: [
                    "https://ghibliapi.dev/species/af3910a6-429f-4c74-9ad5-dfe1c4aa04f2",
                    "https://ghibliapi.dev/species/6bc92fdd-b0f4-4286-ad71-1f99fb4a0d1e",
                    "https://ghibliapi.dev/species/f25fa661-3073-414d-968a-ab062e3065f7"
                  ],
                   locations: [
                    "https://ghibliapi.dev/locations/"
                  ],
                   vehicles: [
                    "https://ghibliapi.dev/vehicles/"
                  ],
                   url: "https://ghibliapi.dev/films/0440483e-ca0e-4120-8c50-4c8cd9b965d6"
       )
    }
    #endif
}
