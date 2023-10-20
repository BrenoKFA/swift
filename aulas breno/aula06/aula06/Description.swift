//
//  Description.swift
//  aula06
//
//  Created by Student06 on 19/10/23.
//

import SwiftUI

struct Description: View {
    var char: Vava
    var body: some View {
        VStack {
            Spacer()
            AsyncImage(url: URL(string: char.displayIcon!)) { phase in
                if let image = phase.image {
                    image
                        .resizable()
                        .scaledToFit()
                } else if phase.error != nil {
                    Text("Erro ao carregar imagem!")
                } else {
                    ProgressView()
                }
            }
            .frame(width: 300)
            .background(.red)
            .padding(.bottom)
            Text(char.description!)
                .font(.system(size: 25))
                .padding(.trailing)
                .padding(.leading)
                .multilineTextAlignment(.center)
            Spacer()
        }
    }
}


