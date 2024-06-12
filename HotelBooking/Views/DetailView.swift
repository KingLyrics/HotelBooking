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
            ScrollView{
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
                        
                        
                        VStack(alignment:.leading, spacing: 10){
                            TextAndFontSizeView(text: "Description", size:14 , fontName: "Inter-Medium")
                            
                            ReadMoreView(text: location.description, linelimit: 3)
                        }
                        .padding(.top)
                        
                        VStack(alignment:.leading){
                            TextAndFontSizeView(text: "Preview", size: 14, fontName: "Inter-Medium")
                            
                            HStack(spacing:30){
                                ForEach(0..<3){_ in
                                    PreviewCard(imageName: .property6)
                                }
                                
                            }
                            .padding(.vertical,30)
                            
                            VStack(alignment: .center){
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                    TextAndFontSizeView(text: "Book Now", size: 16, fontName: "Inter-SemiBold")
                                        .foregroundStyle(.white)
                                        .frame(width: 326, height: 56)
                                        .background(Color.purplishBlue)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                })
                                
                            }
                            .padding(.horizontal,20)
                        }
                        .padding(.top,30)
                        
                    }
                    .padding(.horizontal,10)
                    .navigationTitle("Detail")
                    .navigationBarTitleDisplayMode(.inline)
                    
                }
                .padding(.horizontal,10)
            }
        }
    }
}

#Preview {
    DetailView(location: allLocationListings[0])
}
