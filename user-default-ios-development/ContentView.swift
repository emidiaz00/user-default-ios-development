//
//  ContentView.swift
//  user-default-ios-development
//
//  Created by Emiliano Diaz on 21/06/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            HStack {
                Image(systemName: "moon.circle")
                    .font(.title)
                Text("Dark mode")
                    .font(.title)
                    .bold()
            }.navigationBarTitle("User Defaults")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.colorScheme, .dark)
    }
}
