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
    
    public var allCategories: [String] {
        return movies.keys.map({ String($0) })
    }
    
    public func getMovie(forCat cat: String) -> [Movie] {
        return movies[cat] ?? []
    }
    init() {
        setupMovies()
    }
    
    func setupMovies() {
        movies["Trending Now"] = exampleMovies
        movies["Stand-Up Comedy"] = exampleMovies.shuffled()
        movies["Watch It Again"] = exampleMovies.shuffled()
        movies["SCI-FI Movies"] = exampleMovies.shuffled()
        movies["New Releases"] = exampleMovies.shuffled()
    }
}
