//
//  ContentView.swift
//  MapAppDemo
//
//  Created by Sherwin Espela on 2020-03-31.
//  Copyright © 2020 Sherwin Espela. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var locationManager = LocationManager()
    
    var body: some View {
        MapView()
            .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
