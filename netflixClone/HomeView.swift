//
//  HomeView.swift
//  netflixClone
//
//  Created by Owen Luu on 7/17/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            
            ForEach(data: _) { category in
                Text(category)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
