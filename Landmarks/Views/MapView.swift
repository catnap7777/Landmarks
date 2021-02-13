//
//  MapView.swift
//  Landmarks
//
//  Created by Karen Mathes on 2/9/21.
//  Copyright © 2021 TygerMatrix Software. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    var coordinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()
    //.. Bill's code
    func makeUIView(context: Context) -> MKMapView {
    MKMapView(frame: .zero)
    }

    //.. from Bill's code
//    func updateUIView(_ uiView: MKMapView, context: Context) {
//        let coordinate = CLLocationCoordinate2D(
//            latitude: 42.590519, longitude: -88.435287)
//        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
//        let region = MKCoordinateRegion(center: coordinate, span: span)
//        uiView.setRegion(region, animated: true)
//    }

    //.. Bill's code but with coords from Apple exercise
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 34.011_286, longitude: -116.166_868)
        let span = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 1.4)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}

//.. from Apple exercise
//..   - NOTE:  Map(coordinateRegion: $region)
//..      does NOT appear to work with Xcode 11.6
//struct MapView: View {
//
//    @State private var region = MKCoordinateRegion(
//        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
//        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
//    )
//
//
//    var body: some View {
//        //Text("Now what?")
//        Map(coordinateRegion: $region)
//
//    }
//}

private func setRegion(_ coordinate: CLLocationCoordinate2D) {
     var region = MKCoordinateRegion(
        center: coordinate,
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
//        MapView()
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
