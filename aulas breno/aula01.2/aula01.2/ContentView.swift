//
//  ContentView.swift
//  aula01.2
//
//  Created by Student06 on 09/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            Image("hackatruck")
                .resizable(resizingMode: .stretch)
                .scaledToFit()
            Spacer()
            ZStack {
                Image ("hackatruck")
                    .resizable(resizingMode: .stretch)
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 400)
                Text("HackaTruck")
                    .foregroundColor(Color.blue)
                    .fontWeight(.bold)
                    .font(.system(size: 30))
                    .padding(.bottom, 120)
            }
            Spacer()
            ZStack {
                Rectangle()
                    .frame(width: 260, height: 200)
                HStack {
                    Text("Maker")
                        .foregroundColor(Color.yellow)
                        .font(.system(size: 30))
                        .padding(.bottom, 80)
                    Text("Space")
                        .font(.system(size: 30))
                        .foregroundColor(Color.red)
                        .padding(.bottom, 80)
                }
            }
            
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
