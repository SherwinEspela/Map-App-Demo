//
//  MapView.swift
//  MapAppDemo
//
//  Created by Sherwin Espela on 2020-03-31.
//  Copyright © 2020 Sherwin Espela. All rights reserved.
//

import Foundation
import UIKit
import MapKit
import SwiftUI

struct MapView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> MKMapView {
        let map = MKMapView()
        map.showsUserLocation = true
        return map
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
    }
}
