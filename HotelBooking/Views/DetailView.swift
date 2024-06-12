//
//  DetailView.swift
//  HotelBooking
//
//  Created by Ekomobong Edeme on 11/06/2024.
//

import SwiftUI

struct DetailView: View {
    var location:Location
    
    var body: some View {
        NavigationStack{
            VStack{
                    Image(location.imageName)
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .frame(width: 327, height: 246)
                        .overlay{
                            Button(action: {
                                
                            }, label: {
                                Image(.heart)
                                    .padding(6)
                                    .background(.white)
                                    .clipShape(Circle())
                                    .offset(x:120, y: -80)
                            })
                        }
                VStack(alignment: .leading){
                    
                    HStack(spacing:10){
                        ForEach(location.locationFeature){ feature in
                            BenefitCard(imageName: feature.imageName, text: feature.rawValue)
                        }
                        
                        if location.locationFeature.count < 2 {
                            Spacer()
                        }
                        
                        
                        BenefitCard(imageName: "star.fill", text: location.rating)
                    }
                    
                    
                    
                    HStack{
                        TextAndFontSizeView(text: location.houseName, size: 16, fontName: "Inter-Medium")
                        
                        Spacer()
                        
                        HStack(spacing:3){
                            TextAndFontSizeView(text: "\(location.amount)", size: 16, fontName: "Inter-Bold")
                                .foregroundStyle(.purplishBlue)
                            
                            TextAndFontSizeView(text: "/night", size: 14, fontName: "Inter-Light")
                                .foregroundStyle(.lightG)
                        }
                        
                    }
                    .padding(.top,10)
                    
                    
                    
                    HStack(spacing:10){
                        Image(.icon)
                        TextAndFontSizeView(text: "Wallace, Australia", size:14, fontName:"Inter-Regular" )
                            .foregroundStyle(.lightG)
                        Spacer()
                    }
                   
                    
                    VStack(alignment:.leading){
                        TextAndFontSizeView(text: "Description", size:14 , fontName: "Inter-Medium")
                    }
                    .padding(.top)
                    
                    
                    
                    Spacer()
                }
                .padding(.horizontal,20)

            }
            .padding(.horizontal,10)
            .navigationTitle("Detail")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

#Preview {
    DetailView(location: allLocationListings[0])
}
