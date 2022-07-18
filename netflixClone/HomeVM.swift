//
//  HomeVM.swift
//  netflixClone
//
//  Created by Owen Luu on 7/17/22.
//

import Foundation

class HomeVM: ObservableObject {
    // String === category
    @Published var movies: [String: [Movie]] = [:]
    
    init() {
        setupMovies()
    }
    
    func setupMovies() {
        movies["Trending Now"] = [exampleMovie1]
    }
}
