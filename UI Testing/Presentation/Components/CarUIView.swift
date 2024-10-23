//
//  CarUIView.swift
//  UI Testing
//
//  Created by Mekari on 22/10/24.
//

import SwiftUI

struct CarUIView: View {
    let car: Car
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(car.brand).font(.headline)
            Text(car.model).font(.subheadline)
        }
    }
}

#Preview {
    CarUIView(car: Car(brand: "BMW", model: "BMW Z4 Roadster"))
}
