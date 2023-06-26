//
//  Helpers.swift
//  Qwiker-Driver
//
//  Created by Le Vu Phuoc 01.6.2023.
//

import SwiftUI
import MapKit
import GeoFireUtils

final class Helpers{
    
    static func openSettings(){
        guard let settingURL = URL(string: UIApplication.openSettingsURLString) else {return}
        if UIApplication.shared.canOpenURL(settingURL){
            UIApplication.shared.open(settingURL)
        }
    }
    
    
    static func getGeoHash(forLocation location: CLLocationCoordinate2D) -> String{
        return GFUtils.geoHash(forLocation: location)
    }
}
