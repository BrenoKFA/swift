//
//  ContentView.swift
//  aula03.2
//
//  Created by Student06 on 11/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: primeiro()) {
                    Text("Modo 1")
                }
                NavigationLink(destination: segundo()) {
                    Text("Modo 2")
                }
                NavigationLink(destination: terceiro()) {
                    Text("Modo 3")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
