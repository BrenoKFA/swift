//
//  ContentView.swift
//  aula06
//
//  Created by Student06 on 19/10/23.
//

import SwiftUI


struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(colors: [.white], startPoint: .top, endPoint: .bottom)
                ScrollView {
                    VStack {
                        AsyncImage(url: URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Valorant_logo_-_pink_color_version.svg/1200px-Valorant_logo_-_pink_color_version.svg.png")) { phase in
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
                        ForEach(viewModel.chars, id: \.self){ index in
                            HStack {
                                NavigationLink(destination: Description(char: index)) {
                                    AsyncImage(url: URL(string: index.displayIconSmall!)) { phase in
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
                                    .frame(width: 100, height: 100)
                                    .padding(.leading)
                                    .padding(.top)
                                    Spacer()
                                    Text(index.displayName!)
                                        .foregroundColor(.white)
                                        .font(.system(size: 30))
                                        .fontWeight(.bold)
                                        .padding(.trailing)
                                    Spacer()
                                }
                                .background(.red)
                            }
                        }
                    }
                    .padding(.top, 60)
                }
            }
            .ignoresSafeArea()
        }
        .onAppear(){
            viewModel.fetch()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
