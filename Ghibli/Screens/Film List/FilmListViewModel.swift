//
//  FilmListViewModel.swift
//  Ghibli
//
//  Created by Deonte Kilgore on 12/26/23.
//

import Foundation

final class FilmListViewModel: ObservableObject {
    @Published var films: [Film] = []
    
    func getFilms() async {
        do {
            films = try await APIService().getFilms()
        } catch {
            print(error.localizedDescription)
        }
    }
    
}
