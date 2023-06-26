//
//  LocationRowsViewComponent.swift
//  Qwiker
//
//  Created by Le Vu Phuoc 10.6.2023.
//

import SwiftUI

struct LocationRowsViewComponent: View {
    var selectLocationTitle: String?
    var destinationLocationTitle: String?
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            locationLabel()
            Divider().padding(.leading)
            locationLabel(isDestination: true)
        }
    }
}

struct LocationRowsViewComponent_Previews: PreviewProvider {
    static var previews: some View {
        LocationRowsViewComponent()
    }
}


extension LocationRowsViewComponent{
    private func locationLabel(isDestination: Bool = false) -> some View{
        HStack(alignment: .center, spacing: 20) {
            Circle()
                .stroke(lineWidth: 3)
                .fill(isDestination ? Color.primaryBlue : Color.secondaryGrey)
                .frame(width: 12, height: 12)
            VStack(alignment: .leading, spacing: 4){
                    Text(isDestination ? destinationLocationTitle ?? "Destination" : selectLocationTitle ?? "Current location")
                        .lineLimit(1)
                        .font(.headline.weight(.medium))
                     .foregroundColor(Color.black)
                Text(isDestination ? "Change destination" : "Specify entrance")
                    .font(.poppinsRegular(size: 12))
                    .foregroundColor(.gray)
            }
            Spacer()
        }
    }

}
