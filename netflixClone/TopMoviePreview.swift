//
//  TopMoviePreview.swift
//  netflixClone
//
//  Created by Owen Luu on 7/19/22.
//

import SwiftUI

struct TopMoviePreview: View {
    var movie: Movie
    var body: some View {
        Text("Hello, World!")
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMovie1)
    }
}
