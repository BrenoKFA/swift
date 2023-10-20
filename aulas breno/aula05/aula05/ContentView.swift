//
//  ContentView.swift
//  aula05
//
//  Created by Student06 on 18/10/23.
//

import SwiftUI
import MapKit
import Foundation

struct ContentView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    @State private var countryName = ""
    @State private var showingSheet: Bool = false
    @State private var loc: LocationModels
    
    init() {
        _loc = State (initialValue: mapLocation[0])
        _region = State(initialValue: MKCoordinateRegion(center: mapLocation[0].coordinate, span: mapLocation[0].span))
        _showingSheet = State(initialValue: false)
    }
        
    private let mapLocation = [
        LocationModels(name: "Finlândia", coordinate: CLLocationCoordinate2D(latitude: 60.1100964, longitude: 24.6890558), flag: "https://wikiwandv2-19431.kxcdn.com/_next/image?url=https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Flag_of_Finland.svg/langpt-640px-Flag_of_Finland.svg.png&w=640&q=50", span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10), description: "bla bla bla bla bla bla bla bla bla bla bla bla bla bla"),
        LocationModels(name: "Brasil", coordinate:  CLLocationCoordinate2D(latitude: -5.19515, longitude: -37.3828398), flag: "https://static.todamateria.com.br/upload/ba/nd/bandeira-do-brasil-og.jpg", span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10), description: "bla bla bla bla bla bla bla bla"),
        LocationModels(name: "Canadá", coordinate:  CLLocationCoordinate2D(latitude: 60.1152879, longitude: -114.9166031), flag: "https://img.freepik.com/vetores-premium/bandeira-oficial-nacional-do-canada-simbolo-bandeira-ilustracao-vetorial_622428-3853.jpg", span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10), description: "bla bla bla"),
        LocationModels(name: "Reino Unido", coordinate:  CLLocationCoordinate2D(latitude: 53.4122686, longitude: -3.0808643), flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Flag_of_the_United_Kingdom_%283-5%29.svg/255px-Flag_of_the_United_Kingdom_%283-5%29.svg.png", span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10), description: "bla bla bla")
    ]
    
    var body: some View {
        VStack {
            Text("World Map")
                .font(.system(size: 30))
                .fontWeight(.bold)
            HStack {
                Text(countryName)
            }
            Map(coordinateRegion: $region, annotationItems: mapLocation) { loc in
                MapAnnotation(coordinate: loc.coordinate) {
                    Button {
                        showingSheet.toggle()
                    } label: {
                        VStack(spacing: 0) {
                            Image(systemName: "mappin.circle.fill")
                                .font(.title)
                                .foregroundColor(.red)
                            Image(systemName: "arrowriangle.down.fill")
                                .font(.caption)
                                .foregroundColor(.red)
                                .offset(x: 0, y: -5)
                        }
                    }
                    .sheet(isPresented: $showingSheet) {
                        CountryDetails(desc: loc.description)
                    }
                }
            }
            
            HStack {
                ForEach(mapLocation) { location in
                    Button(location.name) {
                        countryName = location.name
                        region = MKCoordinateRegion(center: location.coordinate, span: MKCoordinateSpan(latitudeDelta: 20, longitudeDelta: 20))
                    }
                    .buttonStyle(.borderedProminent)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
