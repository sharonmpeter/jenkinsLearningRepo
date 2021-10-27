//
//  MapView.swift
//  SwiftUIdemo
//
//  Created by qbuser on 13/07/21.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 9.9898, longitude: 76.3189), span: MKCoordinateSpan(latitudeDelta: 0, longitudeDelta: 0))
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
