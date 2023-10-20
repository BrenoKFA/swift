//
//  APIViewModel.swift
//  aula07
//
//  Created by Student06 on 20/10/23.
//

import Foundation


struct API: Decodable {
    var data: [CoinMenu]
}

struct CoinMenu: Decodable, Identifiable {
    var id: String?
    var rank: String?
    var symbol: String?
}

class APIViewModel: ObservableObject {
    @Published var coins: [CoinMenu] = []

    func fetch() {
        guard let url = URL(string: "https://api.coincap.io/V2/assets") else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let decodificado = try JSONDecoder().decode(API.self, from: data)
                
                DispatchQueue.main.async {
                    self?.coins = decodificado.data
                }
            } catch {
                print(error)
            }
        }
        
        task.resume()
    }
}


