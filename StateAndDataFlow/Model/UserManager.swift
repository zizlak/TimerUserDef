//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 27.07.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import Combine

final class UserManager: ObservableObject {
    @Published var isRegister = false
    var name = ""
    
    init(){}
    
    init(name: String) {
        self.name = name
    }
}
