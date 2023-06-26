//
//  MapViewState.swift
//  Qwiker-Driver
//
//  Created by Le Vu Phuoc 01.6.2023.
//


import Foundation

enum MapViewState: Int {
    case noInput
    case searchingForLocation
    case locationSelected
    case tripRequested
    case tripAccepted
    case driverArrived
    case tripInProgress
    case arrivedAtDestination
    case tripCompleted
    case tripCancelled
    case polylineAdded
}
