//
//  FilmListView.swift
//  Ghibli
//
//  Created by Deonte Kilgore on 12/24/23.
//

import SwiftUI

struct FilmListView: View {
    @StateObject private var viewModel = FilmListViewModel()
    
    var body: some View {
        VStack {
            ForEach(viewModel.films) { film in
                Text(film.title)
            }
        }
        .task {
            await viewModel.getFilms()
        }
    }
}

#Preview {
    FilmListView()
}
