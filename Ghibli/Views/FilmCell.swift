//
//  FilmCell.swift
//  Ghibli
//
//  Created by Deonte Kilgore on 12/27/23.
//

import SwiftUI

struct FilmCell: View {
    var film: Film
    @State private var image: Data?
    
    var body: some View {
        HStack(alignment: .top, spacing:  16) {
            if image != nil {
                Image(uiImage: UIImage(data: image!)!)
                    .resizable()
                    .frame(width: 100, height: 150)
                    .cornerRadius(10.0)
            }
            VStack(alignment: .leading, spacing: 8) {
                Text(film.title)
                    .font(.headline)
                Text(film.originalTitle)
                    .font(.footnote)
                Spacer()
                    .frame(height: 16)
                Text("Directed by: \(film.director)")
            }
        }
        .task {
            image = await APIService().downloadImageData(from: film.image)
        }
    }
}

#Preview {
    FilmCell(film: Film.previewFilm())
}
