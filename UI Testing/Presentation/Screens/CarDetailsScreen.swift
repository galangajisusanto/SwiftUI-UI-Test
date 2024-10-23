//
//  CarDetailsScreen.swift
//  UI Testing
//
//  Created by Mekari on 22/10/24.
//

import SwiftUI

struct CarDetailsScreen: View {
    let car: Car
    
    var body: some View {
        VStack {
            Image(systemName: "car.fill")
                .font(.system(size: 100))
                .foregroundColor(.blue)
                .accessibilityIdentifier(Identifiers.Images.CAR)
            Text(car.model)
                .font(.largeTitle)
                .padding()
                .accessibilityIdentifier(Identifiers.Text.CAR_DESCRIPTION)
        }
        .navigationBarTitle(car.brand, displayMode: .inline)
    }
}

#Preview {
    CarDetailsScreen(car: Car(brand: "Tesla", model: "Tesla Model 3"))
}
