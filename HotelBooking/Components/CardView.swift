//
//  CardView.swift
//  HotelBooking
//
//  Created by Ekomobong Edeme on 11/06/2024.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        
        VStack{
            Image(.property1)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .frame(width: 257, height: 182)
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "heart")
                    .offset(x:90, y:-165)
            })
            
        }
    }
}

#Preview {
    CardView()
}
