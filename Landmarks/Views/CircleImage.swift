//
//  CircleImage.swift
//  Landmarks
//
//  Created by Karen Mathes on 2/9/21.
//  Copyright © 2021 TygerMatrix Software. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    
    var image: Image
    
    var body: some View {
        
        image
//        Image("turtlerock")
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 7)
        
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
//        CircleImage()
        CircleImage(image: Image("turtlerock"))
    }
}
