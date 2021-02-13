//
//  Landmark.swift
//  Landmarks
//
//  Created by Karen Mathes on 2/13/21.
//  Copyright © 2021 TygerMatrix Software. All rights reserved.
//

import Foundation
import SwiftUI
import CoreLocation

//.. mapping to landmarkData.json file
//.. Switch to Landmark.swift and declare conformance to the Identifiable protocol.  The Landmark data already has the id property required by Identifiable protocol; you only need to add a property to decode it when reading the data.

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    //..Compute a locationCoordinate property that’s useful for interacting with the MapKit framework
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    
}


