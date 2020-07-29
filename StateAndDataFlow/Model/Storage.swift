//
//  Storage.swift
//  StateAndDataFlow
//
//  Created by Aleksandr Kurdiukov on 29.07.20.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//
import Foundation

class Storage{
    static let shared = Storage()
    
    private let kStorageUser = "UserDefaultsPersistance.kStorageUser"
    
    var storage: String? {
        set { UserDefaults.standard.set(newValue, forKey: kStorageUser)}
        get { return (UserDefaults.standard.string(forKey: kStorageUser))}
    }
}

