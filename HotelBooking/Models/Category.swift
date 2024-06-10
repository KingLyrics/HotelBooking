//
//  Category.swift
//  HotelBooking
//
//  Created by Ekomobong Edeme on 10/06/2024.
//

import Foundation

enum Category:String, CaseIterable{
    case Hotel =  "Hotel"
    case Homestay = "Homestay"
    case Apartement =  "Apart"
    case RentHouse =  "Rent House"
    
    var imageName:String{
        switch self {
        case .Hotel:
            return "house"
        case .Homestay:
            return "house.circle"
        case .Apartement:
            return "house.lodge"
        case .RentHouse:
            return "homekit"
        }
    }
}
