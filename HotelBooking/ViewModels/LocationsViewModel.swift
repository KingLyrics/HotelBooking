//
//  LocationsViewModel.swift
//  HotelBooking
//
//  Created by Ekomobong Edeme on 11/06/2024.
//

import Foundation

class LocationsViewModel:ObservableObject{
    @Published var allLocations = [Location]()
    
    private let service:LocationService
    
    init(service:LocationService){
        self.service = service
        Task {await getLocations()}
    }
    
    func getLocations()async{
        do{
            self.allLocations = try await service.fetchLocations()
        }catch{
            print("Failed to fetch ")
        }
    }
}
