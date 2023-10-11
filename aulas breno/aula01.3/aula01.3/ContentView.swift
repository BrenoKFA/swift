//
//  ContentView.swift
//  aula01.3
//
//  Created by Student06 on 09/10/23.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    @State private var showingAlert = false
    var body: some View {
        ZStack {
            Image("hackatruck")
                .opacity(0.1)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        VStack {
            Spacer()
            Text("Bem vindo, \(name) ")
                .foregroundColor(Color.black)
                .font(.system(size: 25))
            TextField("Digite seu nome:", text: $name)
                .foregroundColor(Color.black)
                .font(.system(size: 25))
                .multilineTextAlignment(.center)
            Spacer()
            Image("logo")
                .resizable(resizingMode: .stretch)
                .scaledToFit()
                .frame(width: 200)
            Image("truck")
                .resizable(resizingMode: .stretch)
                .scaledToFit()
                .frame(width: 200)
            Spacer()
            Button("Entrar") {
                showingAlert = true
            }
            .alert(isPresented: $showingAlert) {
                Alert(title: Text("ALERTA!") .bold(),
                      message: Text("Você irá iniciar o desafio de aula agora"), dismissButton: .default (Text("Vamos lá!").bold())
                )
            }
            Spacer()
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
