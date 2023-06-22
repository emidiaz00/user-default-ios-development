//
//  ContentView.swift
//  user-default-ios-development
//
//  Created by Emiliano Diaz on 21/06/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var mode : ColorScheme = .light
    @State private var cambio : Bool!
    
    private func darkMode() {
        if (UserDefaults.standard.object(forKey: "modoOscuro") != nil) {
            let darkMode = UserDefaults.standard.object(forKey: "modoOscuro") as! Bool
            if darkMode {
                self.cambio = true
                self.mode = .dark
            } else {
                self.mode = .light
                self.cambio = false
            }
        } else {
            self.cambio = true
            self.mode = .light
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
                    UserDefaults.standard.set(self.cambio, forKey: "modoOscuro")
                    self.darkMode()
                }){
                    Text("Cambio modo")
                }
            }.navigationBarTitle("User Defaults")
                .onAppear( perform: darkMode)
        }.environment(\.colorScheme, self.mode)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
