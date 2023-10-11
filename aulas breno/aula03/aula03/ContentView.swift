//
//  ContentView.swift
//  aula03
//
//  Created by Student06 on 11/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            TabView {
                Home()
                    .badge(2)
                    .tabItem {
                        Label("Home", systemImage: "figure.stand.line.dotted.figure.stand")
                    }
                Search()
                    .tabItem {
                        Label("Search", systemImage: "magnifyingglass")
                    }
                Photos()
                    .tabItem {
                        Label("Photos", systemImage: "photo")
                    }
                Mensages()
                    .tabItem {
                        Label("Mensages", systemImage: "message.fill")
                    }
                Profile()
                    .tabItem {
                        Label("Profile", systemImage: "person.fill")
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
