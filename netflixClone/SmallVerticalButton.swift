//
//  SmallVerticalButton.swift
//  netflixClone
//
//  Created by Owen Luu on 7/19/22.
//

import SwiftUI

struct SmallVerticalButton: View {
    var text: String
    
    var isOnImage: String
    var isOffImage: String
    
    var isOn: Bool
    
    var imageName: String {
        return isOnImage
    }
    
    var body: some View {
        Button(action: {
            //action
        }, label: {
            VStack {
                Image(systemName: imageName)
            }
        })
    }
}

struct SmallVerticalButton_Previews: PreviewProvider {
    static var previews: some View {
        SmallVerticalButton(text: "My List", isOnImage: "Checkmark", isOffImage: "Plus", isOn: true)
    }
}
