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
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.black)
                .bold()
            
        }
        .frame(width: 200, height: 60)
        .background(Color.indigo)
        .cornerRadius(35)
        
        
    }
}

struct ButtonPressed_Previews: PreviewProvider {
    static var previews: some View {
        ButtonPressed(title: "Go!", action: {})
    }
}
