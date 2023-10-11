//
//  Photos.swift
//  aula03
//
//  Created by Student06 on 11/10/23.
//

import SwiftUI

struct Photos: View {
    private var images = ["cart.fill", "car.fill", "train.side.front.car", "trash.fill", "figure.volleyball"]
    var body: some View {
        ScrollView {
        ForEach(images, id: \.self) { image in
            Image(systemName: image)
                .padding(.vertical, 10.0)
        }
    }
    }
}

struct Photos_Previews: PreviewProvider {
    static var previews: some View {
        Photos()
    }
}
