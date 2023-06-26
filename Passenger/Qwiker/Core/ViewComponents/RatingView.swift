//
//  RatingView.swift
//  Qwiker
//
//  Created by Le Vu Phuoc 10.6.2023.
//

import SwiftUI

struct RatingView: View{
    @State private var rating: Int = 0
    var maximumRating = 5
    var offImage: Image?
    var onImage = Image(systemName: "star.fill")
    var offColor = Color.secondaryGrey.opacity(0.4)
    var onColor = Color.yellow
    var body: some View{
        HStack(spacing: 20) {
            ForEach(1..<maximumRating + 1, id: \.self) { number in
                image(for: number)
                    .font(.title)
                    .foregroundColor(number > rating ? offColor : onColor)
                    .onTapGesture {
                        withAnimation {
                            rating = number
                        }
                    }
            }
        }
    }
}


struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView()
    }
}


extension RatingView{
    func image(for number: Int) -> Image {
        if number > rating {
            return offImage ?? onImage
        } else {
            return onImage
        }
    }
}
