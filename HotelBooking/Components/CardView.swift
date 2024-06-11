//
//  CardView.swift
//  HotelBooking
//
//  Created by Ekomobong Edeme on 11/06/2024.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        VStack(alignment:.leading){
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
                Spacer()
                HStack{
                    Image(.star)
                    TextAndFontSizeView(text: "5.0", size: 12, fontName: "Inter-Bold")
                }
                .padding(.trailing,10)
                
            }
            VStack(alignment:.leading, spacing: 20){
                TextAndFontSizeView(text: "Alice Springs NT 0870, Australia", size: 12, fontName: "Inter-Regular")
                    .foregroundStyle(.lightG)
                HStack(spacing:4){
                    TextAndFontSizeView(text: "$200.7", size: 16, fontName: "Inter-Bold")
                        .foregroundStyle(.purplishBlue)
                    TextAndFontSizeView(text: "/night", size: 14, fontName: "Inter-Light")
                        .foregroundStyle(.lightG)
                }
            }
        }
        .padding()
        .frame(width: 300)
    }
}

#Preview {
    CardView()
}
