//
//  HomeView.swift
//  netflixClone
//
//  Created by Owen Luu on 7/17/22.
//

import SwiftUI

struct HomeView: View {
    var vm: HomeVM = HomeVM()
    
    var body: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            
            ForEach(vm.allCategories, id: \.self) { category in
                VStack {
                    HStack{
                    Text(category)
    //                    .foregroundColor(.blue)
                        Spacer()
                    }
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        Text("placeholder")})
                }
            }
        }
        .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
