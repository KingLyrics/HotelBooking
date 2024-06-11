//
//  ModelData.swift
//  HotelBooking
//
//  Created by Ekomobong Edeme on 11/06/2024.
//

import Foundation

class ReadJSON: ObservableObject {
    @Published var allLocationListings:[Location] = []

    init() {
        loadData()
    }

    func loadData() {
        guard let url = Bundle.main.url(forResource: "LocationListings", withExtension: "json") else {
            print("JSON file not found")
            return
        }
        
        do {
            let data = try Data(contentsOf: url)
            let locations = try JSONDecoder().decode([Location].self, from: data)
            self.allLocationListings = locations
            print("Successfully loaded locations: \(locations.count) items")
        } catch {
            print("Failed to load or decode JSON: \(error.localizedDescription)")
        }
    }
}


