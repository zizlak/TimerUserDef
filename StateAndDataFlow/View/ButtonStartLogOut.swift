//
//  ButtonStartLogOut.swift
//  StateAndDataFlow
//
//  Created by Aleksandr Kurdiukov on 29.07.20.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct ButtonStartLogOut: View {
    var action: () -> Void
    var title: String
    
    var lineColor: Color
    var color: Color
    
    var body: some View {
        Button(action: action) {
            Text("\(title)")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
        }
        .frame(width: 200, height: 60)
        .background(color)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .stroke(lineColor, lineWidth: 4)
        )
    }
}

struct ButtonStartLogOut_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStartLogOut(action: {}, title: "Start", lineColor: .yellow, color: .black)
    }
}
