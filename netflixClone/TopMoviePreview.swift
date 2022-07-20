//
//  TopMoviePreview.swift
//  netflixClone
//
//  Created by Owen Luu on 7/19/22.
//

import SwiftUI
import Kingfisher

struct TopMoviePreview: View {
    var movie: Movie
    var body: some View {
        ZStack{
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            VStack {
                Spacer()
                HStack{
                    ForEach(movie.categories, id: \.self) { category in
                        HStack {
                            Text(category)
                            Image(systemName: "circle.fill")
                                .foregroundColor(.blue)
                                .font(.system(size: 3))
                        }
                    }
                }
                Text("Row of buttons")
                
            }
        }
        .foregroundColor(.white)
        
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMovie1)
    }
}
