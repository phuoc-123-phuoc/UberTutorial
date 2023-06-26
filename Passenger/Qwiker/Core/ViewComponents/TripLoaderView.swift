//
//  TripLoaderView.swift
//  Qwiker
//
// Created by Le Vu Phuoc 10.6.2023.
//

import SwiftUI

struct TripLoaderView: View {
    @State private var size1: CGFloat? = 10
    @State private var size2: CGFloat? = 10
    var body: some View {
        ZStack{
            Circle()
                .fill(Color.white)
                .frame(width: size1)
                .opacity(size1 == nil ? 0 : 0.5)
                .onAppear{
                    withAnimation(.easeInOut(duration: 3).repeatForever(autoreverses: false)){
                        size1 = nil
                    }
                }
            Circle()
                .fill(Color.white)
                .frame(width: size2)
                .opacity(size2 == nil ? 0 : 0.5)
                .onAppear{
                    withAnimation(.easeInOut(duration: 4).repeatForever(autoreverses: false)){
                        size2 = nil
                    }
                }
        }
    }
}

struct TripLoaderView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
            TripLoaderView()
        }
    }
}
