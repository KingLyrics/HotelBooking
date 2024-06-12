//
//  PreviewCards.swift
//  HotelBooking
//
//  Created by Ekomobong Edeme on 12/06/2024.
//

import SwiftUI

struct PreviewCard: View {
    let imageName:ImageResource
    
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFit()
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .frame(width: 98, height: 64)
    }
}

#Preview {
    PreviewCard(imageName: .property6)
}
