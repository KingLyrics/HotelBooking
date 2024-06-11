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
                
                HStack{
                    HStack{
                        ForEach(location.locationFeature){ feature in
                            BenefitCard(imageName: feature.imageName, text: feature.rawValue)
                        }
                        BenefitCard(imageName: "star", text: location.rating)
                    }
                  
                }
                Spacer()
            }
            .padding()
            .navigationTitle("Detail")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

#Preview {
    DetailView(location: allLocationListings[0])
}
