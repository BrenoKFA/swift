//
//  ContentView.swift
//  aula02
//
//  Created by Student06 on 10/10/23.
//

import SwiftUI

struct ContentView: View {
    @State private var peso: String = ""
    @State private var altura: String = ""
    @State private var kg: Double? = 0
    @State private var cm: Double? = 0
    @State private var imc: Double = 0
    @State private var res: String = ""
    @State private var cor: String = "baixo-peso"
    var body: some View {
        ZStack {
            Color(cor)
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .ignoresSafeArea()
        
            VStack {
                Text("Calculadora de IMC")
                    .font(.system(size: 35))
                    .multilineTextAlignment(.center)
                    .padding(.top, 40)
                    .padding(.bottom, 40)
                TextField("Peso [kg]: ", text: $peso)
                    .multilineTextAlignment(.center)
                    .background(.white)
                    .border(.white, width: 5)
                    .cornerRadius(5)
                    .padding(.leading, 10)
                    .padding(.trailing, 10)
                    .font(.system(size: 20))
                TextField("Altura [cm]: ", text: $altura)
                    .multilineTextAlignment(.center)
                    .background(.white)
                    .border(.white, width: 5)
                    .cornerRadius(5)
                    .padding(.leading, 10)
                    .padding(.trailing, 10)
                    .font(.system(size: 20))
                Button("Calcular") {
                    kg = Double(peso)
                    cm = Double(altura)
                    if (kg != nil && cm != nil && kg! > 0 && cm! > 0) {
                        imc = kg! / pow((cm!/100), 2)
                        switch imc {
                        case 0...18.5:
                            cor = "baixo-peso"
                            res = "Baixo Peso"
                        case 18.6..<25:
                            cor = "normal"
                            res = "Normal"
                        case 25..<30:
                            cor = "sobrepeso"
                            res = "Sobrepeso"
                        default:
                            cor = "obesidade"
                            res = "Obesidade"
                        }
                        peso = ""
                        altura = ""
                    }
                }
                .buttonStyle(.borderedProminent)
                .font(.system(size: 25))
                .padding(.top, 20)
                
                Spacer()
                Text(res)
                    .font(.system(size: 30))
                Spacer()
                Image("tabela-IMC")
                    .resizable(resizingMode: .stretch)
                    .scaledToFit()
                    .padding(.bottom, 30)
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
