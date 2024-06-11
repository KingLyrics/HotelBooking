//
//  LocationViewModel.swift
//  HotelBooking
//
//  Created by Ekomobong Edeme on 11/06/2024.
//

import Foundation
import Combine

class LocationViewModel: ObservableObject {
    @Published var locations = [Location]()

    init() {
        loadData()
    }

    private func loadData() {
        guard let url = Bundle.main.url(forResource: "data", withExtension: "json") else {
            print("JSON file not found")
            return
        }

        do {
            let data = try Data(contentsOf: url)
            let decodedLocations = try JSONDecoder().decode([Location].self, from: data)
            self.locations = decodedLocations
            print("Successfully loaded locations: \(decodedLocations.count) items")
        } catch {
            print("Failed to load or decode JSON: \(error.localizedDescription)")
        }
    }
}


