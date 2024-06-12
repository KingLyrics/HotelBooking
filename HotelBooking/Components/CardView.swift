//
//  CardView.swift
//  HotelBooking
//
//  Created by Ekomobong Edeme on 11/06/2024.
//

import SwiftUI

struct CardView: View {
    var location:Location
    
    var body: some View {
        VStack(alignment:.leading){
            Image(location.imageName)
                .resizable()
                .scaledToFit()
                .clipShape(.rect(
                    topLeadingRadius:10,
                    topTrailingRadius: 10
                )
                )
                .frame(width: 257, height: 182)
                .overlay{
                    Button(action: {
                       
                    }, label: {
                        Image(.heart)
                            .padding(6)
                            .background(.white)
                            .clipShape(Circle())
                            .offset(x:95, y: -60)
                    })
                }
            VStack(alignment:.leading){
                HStack{
                    TextAndFontSizeView(text: location.houseName, size: 14, fontName: "Inter-Medium")
                        .foregroundStyle(.midnight)
                    Spacer()
                    HStack{
                        Image(.star)
                        TextAndFontSizeView(text: location.rating, size: 12, fontName: "Inter-Bold")
                            .foregroundStyle(.midnight)
                    }
                    .padding(.trailing,10)
                    
                }
                VStack(alignment:.leading, spacing: 20){
                    TextAndFontSizeView(text: location.locationName, size: 12, fontName: "Inter-Regular")
                        .foregroundStyle(.lightG)
                    HStack(spacing:4){
                        TextAndFontSizeView(text: "\(location.amount)", size: 16, fontName: "Inter-Bold")
                            .foregroundStyle(.purplishBlue)
                        TextAndFontSizeView(text: "/night", size: 14, fontName: "Inter-Light")
                            .foregroundStyle(.lightG)
                    }
                    
                }
            }
            .padding()
            .background(Color.white)
            .clipShape(.rect(
                bottomLeadingRadius: 10,
                bottomTrailingRadius: 10
            ))
            .offset(y:-14)
            .shadow(radius: 5)
         
        }
        .padding()
        .frame(width: 289)
       
        
    }
}

#Preview {
    Group{
        CardView(location:allLocationListings[0])
        CardView(location:allLocationListings[2])

    }
}
