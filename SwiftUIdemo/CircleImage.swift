//
//  CircleImage.swift
//  SwiftUIdemo
//
//  Created by qbuser on 13/07/21.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("profilePic")
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.white))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
