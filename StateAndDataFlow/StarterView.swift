//
//  StarterView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 27.07.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct StarterView: View {
    @EnvironmentObject var user: UserManager
    
    let userDefaults = UserDefaults.standard.string(forKey: "user")
    
    var body: some View {
        
        Group {
        
            if user.isRegister || userDefaults != nil{
                ContentView()
            } else {
                RegisterView()
            }
        }
    }
}

struct StarterView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
    }
}
