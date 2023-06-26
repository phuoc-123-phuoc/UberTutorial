//
//  Passenger.swift
//  Qwiker-Driver
//
//  Created by Le Vu Phuoc 01.6.2023.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift
import CoreLocation
import Firebase
import GeoFire

struct Passenger: Codable {
    @DocumentID var id: String?
    let fullname: String
    let email: String
    var phoneNumber: String
    var profileImageUrl: String?
    var coordinates: GeoPoint
    
    var uid: String { return id ?? "" }
}

