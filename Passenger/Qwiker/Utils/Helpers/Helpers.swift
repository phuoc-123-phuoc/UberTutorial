//
//  Helpers.swift
//  Qwiker
//
//  Created by Le Vu Phuoc 10.6.2023.
//

import SwiftUI

final class Helpers{
    
    static func openSettings(){
        guard let settingURL = URL(string: UIApplication.openSettingsURLString) else {return}
        if UIApplication.shared.canOpenURL(settingURL){
            UIApplication.shared.open(settingURL)
        }
    }
    
}


