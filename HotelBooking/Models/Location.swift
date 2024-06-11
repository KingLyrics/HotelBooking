//
//  Location.swift
//  HotelBooking
//
//  Created by Ekomobong Edeme on 11/06/2024.
//


import Foundation

struct Location: Identifiable, Codable {
    var id: Int
    let imageName: String
    let houseName: String
    let rating: String
    let locationName: String
    let amount: String
    let description: String
    let locationFeature: [LocationFeatures]
    var isFavorite: Bool = false
}

enum LocationFeatures: String, Codable, Identifiable {
    case freeWifi = "Free Wifi"
    case freeBreakfast = "Free Breakfast"
    
    var imageName: String {
        switch self {
        case .freeWifi:
            return "wifi"
        case .freeBreakfast:
            return "cup.and.saucer.fill"
        }
    }
    
    var id:String{
        return self.rawValue
    }
}




