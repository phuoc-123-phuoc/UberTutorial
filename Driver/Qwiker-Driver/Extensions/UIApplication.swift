//
//  UIApplication.swift
//  Qwiker-Driver
//
//  Created by Le Vu Phuoc 01.6.2023.
//


import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
