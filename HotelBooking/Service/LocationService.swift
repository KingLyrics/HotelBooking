//
//  LocationService.swift
//  HotelBooking
//
//  Created by Ekomobong Edeme on 11/06/2024.
//

import Foundation
class LocationService{
    func fetchLocations() async throws ->[Location]{
        return Developer().locations
    }
}
