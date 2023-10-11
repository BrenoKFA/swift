//
//  Search.swift
//  aula03
//
//  Created by Student06 on 11/10/23.
//

import SwiftUI

struct Search: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 300, height: 300)
                .foregroundColor(Color.blue)
            HStack {
                Text("Hello Hackatruck")
                    .foregroundColor(Color.black)
                    .font(.system(size: 20))
            }
        }
    }
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Search()
    }
}
