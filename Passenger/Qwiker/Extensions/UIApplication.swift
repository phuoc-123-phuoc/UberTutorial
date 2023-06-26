//
//  UIApplication.swift
//  Qwiker
//
//  Created by Le Vu Phuoc 10.6.2023.
//


import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}


