//
//  HomePageView.swift
//  HotelBooking
//
//  Created by Ekomobong Edeme on 10/06/2024.
//

import SwiftUI

struct HomePageView: View {
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    VStack(alignment:.leading){
                        TextAndFontSizeView(text: "Current Location", size: 12, fontName: "Inter-Regular")
                            .foregroundStyle(.lightG)
                        
                        HStack{
                            Image(.icon)
                            TextAndFontSizeView(text: "Wallace, Australia", size:14, fontName:"Inter-SemiBold" )
                        }
                        
                    }
                    Spacer()
                    Image(systemName: "bell.badge")
                        .padding(8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                        )
                    
                }
            }
        }
        .padding()
    }
}


#Preview {
    HomePageView()
}