//
//  Rider.swift
//  Qwiker
//
//  Created by Le Vu Phuoc 10.6.2023.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift
import CoreLocation
import Firebase
import GeoFire

struct Rider: Codable {
    @DocumentID var id: String?
    let fullname: String
    let email: String
    var course: Double
    var phoneNumber: String
    var profileImageUrl: String?
    var coordinates: GeoPoint
    var geohash: String?
    var vehicle: Vehicle?
    var isActive: Bool

    var uid: String { return id ?? "" }
}
