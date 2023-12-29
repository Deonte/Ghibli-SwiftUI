//
//  GhibliApp.swift
//  Ghibli
//
//  Created by Deonte Kilgore on 12/24/23.
//

import SwiftUI

@main
struct GhibliApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                FilmListView()
            }
        }
            
    }
}
