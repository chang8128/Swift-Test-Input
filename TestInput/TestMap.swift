//
//  TestMap.swift
//  TestInput
//
//  Created by 常志平 on 30/11/22.
//

import SwiftUI
import MapKit

struct TestMap: View {
    @State private var region: MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 40.75773, longitude: -73.985708), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
    
    var body: some View {
        Map(coordinateRegion: $region)
            .edgesIgnoringSafeArea(.all)
    }
}

struct TestMap_Previews: PreviewProvider {
    static var previews: some View {
        TestMap()
    }
}
