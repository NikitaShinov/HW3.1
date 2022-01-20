//
//  ColorCircle.swift
//  HW3.1
//
//  Created by max on 19.01.2022.
//

import SwiftUI

struct ColorCircle: View {
    let color: Color
    let opacity: Double
    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(opacity)
            .frame(width: 75, height: 75)
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .shadow(radius: 5)
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .yellow, opacity: 0.1)
    }
}
