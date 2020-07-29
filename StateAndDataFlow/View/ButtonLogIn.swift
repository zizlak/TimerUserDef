//
//  Button.swift
//  StateAndDataFlow
//
//  Created by Aleksandr Kurdiukov on 29.07.20.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct ButtonLogIn: View {
    
    var action: () -> Void
    
    
    var body: some View {
        Button(action: action) {
            HStack {
                Image(systemName: "checkmark.circle")
                Text("Log In")
            }
        }
    }
}

struct ButtonLogIn_Previews: PreviewProvider {
    static var previews: some View {
        ButtonLogIn(action: {})
    }
}
