//
//  segundo.swift
//  aula03.2
//
//  Created by Student06 on 11/10/23.
//

import SwiftUI

struct segundo: View {
    @State private var name = ""
    var body: some View {
        VStack {
            TextField("Digite seu nome:", text: $name)
                .foregroundColor(Color.black)
                .font(.system(size: 25))
                .multilineTextAlignment(.center)
            Text("Estamos percorrendo um caminho \(name)")
                .foregroundColor(Color.black)
                .font(.system(size: 25))
                .multilineTextAlignment(.center)
            NavigationLink(destination: segundo2(nome: name)) {
                Text("Acessar tela")
            }
        }
    }
}

struct segundo_Previews: PreviewProvider {
    static var previews: some View {
        segundo()
    }
}
