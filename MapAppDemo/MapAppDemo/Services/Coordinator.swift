//
//  Coordinator.swift
//  MapAppDemo
//
//  Created by Sherwin Espela on 2020-03-31.
//  Copyright © 2020 Sherwin Espela. All rights reserved.
//

import Foundation
import MapKit

final class Coordinator: NSObject, MKMapViewDelegate {
    
    var control: MapView
    
    init(_ control: MapView) {
        self.control = control
    }
    
    func mapView(_ mapView: MKMapView, didAdd views: [MKAnnotationView]) {
        
        guard let viewFirst = views.first
            , let annotation = viewFirst.annotation
            , annotation is MKUserLocation else {
            return
        }
        
        let locationDistance: CLLocationDistance = 1000
        let region = MKCoordinateRegion(center: annotation.coordinate, latitudinalMeters: locationDistance, longitudinalMeters: locationDistance)
        mapView.setRegion(region, animated: true)
    }
}
