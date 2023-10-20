//
//  CountryDetails.swift
//  aula05
//
//  Created by Student06 on 18/10/23.
//

import SwiftUI

struct CountryDetails: View {
    var desc: String
    var body: some View {
        ScrollView {
            Text(desc)
        }
    }
}
