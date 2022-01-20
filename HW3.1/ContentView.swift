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
    @State private var activeLight = TrafficLightColor.red
    @State private var activeTitle = "Start!"
    
    private func changeButtonName() {
        if activeTitle == "Start!" {
            activeTitle = "Next!"
        }
    }
    
    private func changeTrafficColor() {
        switch activeLight {
        case .red:
            activeLight = .yellow
        case .yellow:
            activeLight = .green
        case .green:
            activeLight = .red
        }
        changeButtonName()
    }
    
    var body: some View {
        ZStack{
            Color.gray.ignoresSafeArea()
            VStack {
                ColorCircle(color: .red, opacity: activeLight == .red ? 1 : 0.4)
                    .padding()
                ColorCircle(color: .yellow, opacity: activeLight == .yellow ? 1 : 0.4)
                    .padding()
                ColorCircle(color: .green, opacity: activeLight == .green ? 1 : 0.4)
                    .padding()
                Spacer()
                ButtonPressed(title: activeTitle,
                              action:{ changeTrafficColor() })
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
