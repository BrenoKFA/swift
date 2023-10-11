//
//  ContentView.swift
//  aula01
//
//  Created by Student06 on 09/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("hackatruck")
                .resizable(resizingMode: .stretch)
                .scaledToFit()
            Text("HackaTruck")
                .font(.system(size: 25))
                .fontWeight(.bold)
                .foregroundColor(Color.blue)
            HStack {
                Text("Maker")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(Color.yellow)
                Text("Space")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(Color.red)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
