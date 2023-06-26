//
//  TripStatusSliderView.swift
//  Qwiker-Driver
//
//  Created by Le Vu Phuoc 01.6.2023.
//

import SwiftUI

struct TripStatusSliderView: View {
    let title: String
    let action: () -> Void
    var body: some View {
        MTSlideToOpen(thumbnailTopBottomPadding: -2,
                      thumbnailLeadingTrailingPadding: -2,
                      text: title,
                      textColor: .white,
                      thumbnailColor: Color.primaryBlue,
                      sliderBackgroundColor: Color.gray,
                      didReachEndAction: { view in
            action()
        })
        .frame(height: 55)
        .cornerRadius(28)
    }
}

struct TripStatusSliderView_Previews: PreviewProvider {
    static var previews: some View {
        TripStatusSliderView(title: "Slide", action: {})
    }
}
