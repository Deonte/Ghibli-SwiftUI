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
            List(viewModel.films) { film in
                FilmCell(film: film)
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
