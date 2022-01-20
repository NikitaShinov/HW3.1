//
//  ButtonPressed.swift
//  HW3.1
//
//  Created by max on 20.01.2022.
//

import SwiftUI

struct ButtonPressed: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .foregroundColor(.black)
                .bold()
                .background(Color.indigo)
                .frame(width: 150, height: 50)
                .cornerRadius(15, antialiased: true)
            
        }
    }
}

struct ButtonPressed_Previews: PreviewProvider {
    static var previews: some View {
        ButtonPressed(title: "Go!", action: {})
    }
}
