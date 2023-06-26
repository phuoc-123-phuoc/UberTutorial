//
//  TimeInterval.swift
//  Qwiker
//
//  Created by Le Vu Phuoc 10.6.2023.
//

import Foundation


extension TimeInterval {
    
  
    private var minutes: Int {
        return (Int(self) / 60 ) % 60
    }


    var stringTimeInMinutes: String {
         "~\(minutes) min"
    }
}
