//
//  ContentView.swift
//  UI Testing
//
//  Created by Mekari on 22/10/24.
//

import SwiftUI

struct CarListScreen: View {
    
    @State var cars = [
        Car(brand: "BMW",
            model: "BMW Z4 Roadster"),
        Car(brand: "BMW",
            model: "BMW i7"),
        Car(brand: "BMW",
            model: "BMW i5"),
        Car(brand: "BMW",
            model: "BMW i4"),
        Car(brand: "Tesla",
            model: "Tesla Model 3"),
    ]
    
    var body: some View {
        NavigationView {
            List(cars) { car in
                NavigationLink(destination: CarDetailsScreen(car: car)) {
                    CarUIView(car: car)
                        
                }
                .accessibilityIdentifier(car.model)
            }
            .accessibilityIdentifier(Identifiers.Lists.CAR)
            .navigationBarTitle("Car List", displayMode: .automatic)
        }
    }
    
}

#Preview {
    CarListScreen()
}
