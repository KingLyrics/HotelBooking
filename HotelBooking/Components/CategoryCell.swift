//
//  CategoryCell.swift
//  HotelBooking
//
//  Created by Ekomobong Edeme on 10/06/2024.
//

import SwiftUI

struct CategoryCell: View {
    let category:Category
    var isSelected:Bool = true
    
    var body: some View {
        HStack{
            Image(systemName: category.imageName)
                
            TextAndFontSizeView(text: category.rawValue.capitalized, size: 14, fontName: "Inter-Medium")
        }
        .foregroundStyle( isSelected ? .white :  .lightG)
        .padding()
        .background(isSelected ? Color.purplishBlue :Color.lighterG)
        .clipShape(RoundedRectangle(cornerRadius: 8))

    }
}

#Preview {
    Group{
        CategoryCell(category: .Hotel, isSelected: true)
        CategoryCell(category: .Apartement, isSelected: false)

    }
    
}
