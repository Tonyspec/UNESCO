//
//  WorldView.swift
//  Tracker
//
//  Created by Anton Achedžak on 15.05.2021.
//

import MapKit
import SwiftUI

struct WorldView: View {
    @EnvironmentObject var locations: Locations
   @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 49.7401, longitude: 15.1061),
        span: MKCoordinateSpan(latitudeDelta:5, longitudeDelta:5))
    var body: some View {
        Map(coordinateRegion: $region,
            annotationItems: locations.places) {
            location in
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)){
                NavigationLink(destination: ContentView(location: location)){
                    Image(systemName: "mappin.circle.fill")
                    .foregroundColor(.red)
                }
                
            }
        }
            .navigationTitle("Místa")
    }
}

struct WorldView_Previews: PreviewProvider {
    static var previews: some View {
        WorldView()
    }
}
