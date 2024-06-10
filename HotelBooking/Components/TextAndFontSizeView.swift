//
//  TextAndFontSizeView.swift
//  HotelBooking
//
//  Created by Ekomobong Edeme on 10/06/2024.
//

import SwiftUI

struct TextAndFontSizeView: View {
    let text:String
    let size:Float
    let fontName:String
    var body: some View {
        Text(text)
            .font(.custom(fontName, size: CGFloat(size)))
    }
}

#Preview {
    TextAndFontSizeView(text: "Hello World", size: 30, fontName:"Inter-Bold" )
}
