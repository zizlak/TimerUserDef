//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 27.07.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var timer = TimeCounter()
    @EnvironmentObject var user: UserManager
    
    var body: some View {
        VStack(alignment: .center, spacing: 90.0) {
            
            Text("Hi, \(Storage.shared.storage ?? "?")")
                .font(.largeTitle)
            
            Text("\(timer.counter)")
                .font(.largeTitle)
            
            ButtonView(timer: timer)
            
            ButtonStartLogOut(action: logOut,
                              title: "Log Out",
                              lineColor: .blue,
                              color: .black)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserManager())
    }
}

struct ButtonView: View {
    @ObservedObject var timer: TimeCounter
    
    var body: some View {
        VStack {
            
            ButtonStartLogOut(action: {self.timer.startTemer()}, title: "\(timer.buttonTitle)", lineColor: .red, color: .black)
            
        }
    }
}

extension ContentView{
    
    private func logOut(){
        Storage.shared.storage = nil
        self.user.isRegister = false
    }
}

