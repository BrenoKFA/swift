//
//  Music.swift
//  aula04
//
//  Created by Student06 on 17/10/23.
//

import SwiftUI

struct Music: View {
    var music: Song
    var body: some View {
        VStack {
            Spacer()
            AsyncImage(url: URL(string: music.cover)) { phase in
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
            .frame(width: 250)
            Text(music.name)
            Text(music.artist)
            Spacer()
            HStack {
                Image(systemName: "shuffle")
                    .resizable()
                    .scaledToFit()
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                Image(systemName: "backward.end.fill")
                    .resizable()
                    .scaledToFit()
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                Image(systemName: "play.fill")
                    .resizable()
                    .scaledToFit()
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                Image(systemName: "forward.end.fill")
                    .resizable()
                    .scaledToFit()
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                Image(systemName: "repeat")
                    .resizable()
                    .scaledToFit()
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
            }
            Spacer()
        }
    }
}
