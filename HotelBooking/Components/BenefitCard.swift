//
//  BenefitCard.swift
//  HotelBooking
//
//  Created by Ekomobong Edeme on 11/06/2024.
//

import SwiftUI

struct BenefitCard: View {
    let imageName:String
    let text:String
    
    var body: some View {
        HStack{
            Image(systemName:
                    imageName)
            TextAndFontSizeView(text: text, size: 11, fontName: "Inter-Medium")
        }
        .padding(4)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .frame(minWidth: 100, minHeight: 36)
        .background(Color.lighterG)
    }
}

#Preview {
    BenefitCard(imageName: "wifi", text: "Free Wifi")
}
