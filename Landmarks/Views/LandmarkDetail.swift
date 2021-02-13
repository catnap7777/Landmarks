//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Karen Mathes on 2/13/21.
//  Copyright © 2021 TygerMatrix Software. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
//                    .ignoresSafeArea(edges: .top)
                    .frame(height: 300)

            CircleImage(image: landmark.image)
                    .offset(y: -130)
                    .padding(.bottom, -130)

                VStack(alignment: .leading) {
                    Text(landmark.name)
                        .font(.title)
                        .foregroundColor(.primary)

                    HStack {
                        Text(landmark.park)
                        Spacer()
                        Text(landmark.state)
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)

                    Divider()

                    Text("About \(landmark.name)")
                        .font(.title)
                    Text(landmark.description)
                }
                .padding()

        }
        .navigationBarTitle(landmark.name)
//        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
//        LandmarkDetail()
        LandmarkDetail(landmark: landmarks[0])
    }
}
