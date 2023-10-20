//
//  ContentView.swift
//  aula04
//
//  Created by Student06 on 17/10/23.
//

import SwiftUI

struct ContentView: View {
    private let musics = [
        Song(id: 1, name: "Foto do Corte", artist: "Veigh, Nagalli", cover: "https://i.scdn.co/image/ab67616d0000b273199bb880e4e8c1cb8fbabdd0"),
        Song(id: 2, name: "SUV", artist: "Kawe, Tz da Coronel", cover: "https://i.scdn.co/image/ab67616d0000b27300d5885272b6ad33d9038bb3"),
        Song(id: 3, name: "Mais Um Voo", artist: "Teto", cover: "https://i.scdn.co/image/ab67616d0000b2732041e7a067948d9ac6b8561b")
    ]
    private let suggested = [
        Suggestion(id: 1, albumName: "Conexões de Máfia", albumCover: "https://i.scdn.co/image/ab67616100005174f1866b2284e5dbdae69f523e"),
        Suggestion(id: 2, albumName: "Minha Vida é um Filme", albumCover: "https://i.scdn.co/image/ab6761610000e5ebb3a6a4d937381b00a67e47b4"),
        Suggestion(id: 3, albumName: "ÉTPM", albumCover: "https://i.scdn.co/image/ab67616d00001e02b0f68a9ef1e2fd0f57d6be23")
    ]
    var body: some View {
        NavigationStack {
        ZStack {
            LinearGradient(colors: [.blue, .black], startPoint: .top, endPoint: .bottom)
                ScrollView {
                    VStack {
                        Image("truck")
                            .resizable(resizingMode: .stretch)
                            .scaledToFit()
                            .padding(.top, 60)
                            .frame(width: 280)
                        Text("HackaFM")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading)
                            .padding(.top)
                            .padding(.bottom)
                            .font(.system(size: 20))
                            .foregroundColor(Color.white)
                        Spacer()
                        ForEach(musics) { music in
                            HStack {
                                NavigationLink(destination: Music(music: music)) {
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
                                    .frame(width: 50, height: 50)
                                    .padding(.leading)
                                    VStack {
                                        Text(music.name)
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            .foregroundColor(Color.white)
                                        Text(music.artist)
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            .foregroundColor(Color.white)
                                    }
                                }
                                Spacer()
                                Image(systemName: "ellipsis")
                                    .foregroundColor(.white)
                                    .padding(.trailing)
                            }
                        }
                        VStack  {
                            Text("Sugeridos")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading)
                                .font(.system(size: 30))
                                .foregroundColor(Color.white)
                            ScrollView(.horizontal) {
                                HStack {
                                    ForEach(suggested) { artist in
                                        VStack {
                                            AsyncImage(url: URL(string: artist.albumCover)) { phase in
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
                                            .frame(width: 200, height: 200)
                                            Text(artist.albumName)
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        .ignoresSafeArea()
        }
        .accentColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
