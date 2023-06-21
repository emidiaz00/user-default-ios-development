//
//  ContentView.swift
//  user-default-ios-development
//
//  Created by Emiliano Diaz on 21/06/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var mode : ColorScheme = .light
    @State private var cambio = true
    
    private func changeMode() {
        if self.cambio {
            self.mode = .light
        } else {
            self.mode = .dark
        }
    }
    var body: some View {
        NavigationView {
            HStack {
                Image(systemName: "moon.circle")
                    .font(.title)
                Text("Dark mode")
                    .font(.title)
                    .bold()
                Button(action: {
                    self.cambio.toggle()
                    self.changeMode()
                }){
                    Text("Cambio modo")
                }
            }.navigationBarTitle("User Defaults")
        }.environment(\.colorScheme, self.mode)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
