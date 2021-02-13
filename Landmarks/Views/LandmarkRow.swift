//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Karen Mathes on 2/13/21.
//  Copyright © 2021 TygerMatrix Software. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    
    var landmark: Landmark
    
    var body: some View {
        
        HStack {
            landmark.image
            .resizable()
            .frame(width: 50, height: 50)
            //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text(landmark.name)
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            
        LandmarkRow(landmark: landmarks[1])
        LandmarkRow(landmark: landmarks[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
