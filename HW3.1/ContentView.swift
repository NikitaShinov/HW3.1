//
//  ContentView.swift
//  HW3.1
//
//  Created by max on 19.01.2022.
//

import SwiftUI

enum TrafficLightColor {
    case red
    case yellow
    case green
}

struct ContentView: View {
    
    @State private var initialButtonName = "Start!"
    @State private var secondaryButtonName = "Next!"
    @State private var activeLight = TrafficLightColor.red
    
    private func changeTrafficColor(color: TrafficLightColor) {
        switch color {
        case .red:
            activeLight = .yellow
        case .yellow:
            activeLight = .green
        case .green:
            activeLight = .red
        }
    }
    var body: some View {
        VStack{
            ColorCircle(color: .red, opacity: 1)
                .padding()
            ColorCircle(color: .yellow, opacity: 1)
                .padding()
            ColorCircle(color: .green, opacity: 1)
                .padding()
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
