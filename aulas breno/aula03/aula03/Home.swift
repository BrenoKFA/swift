//
//  Home.swift
//  aula03
//
//  Created by Student06 on 11/10/23.
//

import SwiftUI

struct Home: View {
    private let itens = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16"]
    var body: some View {
        List {
            ForEach((1...16), id: \.self) {
                Text("Itens \($0)")
                    .padding(.vertical, 10.0)
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
