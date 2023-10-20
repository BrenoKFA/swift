//
//  LocationModels.swift
//  aula05
//
//  Created by Student06 on 18/10/23.
//

import SwiftUI
import Foundation
import MapKit

struct LocationModels: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    let flag: String
    let span: MKCoordinateSpan
    let description: String
}
