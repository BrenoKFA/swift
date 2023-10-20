//
//  DetailsAssets.swift
//  aula07
//
//  Created by Student06 on 20/10/23.
//

import SwiftUI

struct DetailsAssets: View {
    var coinId: String
    var body: some View {
        Text(coinId)
    }
}

struct DetailsAssets_Previews: PreviewProvider {
    static var previews: some View {
        DetailsAssets(coinId: "Pesquise os detalhes 👍🏿")
    }
}
