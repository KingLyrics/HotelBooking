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
                .clipShape(.rect(
                    topLeadingRadius:10,
                    topTrailingRadius: 10
                )
                )
                .frame(width: 257, height: 182)
                .overlay{
                    Button(action: {}, label: {
                        Image(.heart)
                            .padding(6)
                            .background(.white)
                            .clipShape(Circle())
                            .offset(x:90, y: -60)
                    })
                }
            HStack{
                TextAndFontSizeView(text: "The Aston Vill Hotel", size: 14, fontName: "Inter-Medium")
            }
            
        }
    }
}

#Preview {
    CardView()
}
