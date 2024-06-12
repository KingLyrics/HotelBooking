//
//  ReadMoreView.swift
//  HotelBooking
//
//  Created by Ekomobong Edeme on 12/06/2024.
//

import SwiftUI

struct ReadMoreView: View {
    @State private var expanded:Bool = false
    @State private var truncated:Bool = false
   
    
    private var text:String
    let linelimit:Int
    
    init( text: String, linelimit: Int) {
        self.text = text
        self.linelimit = linelimit
    }
    
    private var readMoreText:String{
        if !truncated{
            return ""
        }else{
            return self.expanded ? "Read Less" : "Read More"
        }
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(text)
                .lineLimit(expanded ?  nil : linelimit)
                .background(
                    Text(text)
                     .lineLimit(linelimit)
                        .background(GeometryReader { visibleTextGeometry in
                            ZStack {
                                Text(self.text)
                                    .background(GeometryReader { fullTextGeometry in
                                        Color.clear.onAppear {
                                            self.truncated = fullTextGeometry.size.height > visibleTextGeometry.size.height
                                        }
                                    })
                            }
                            .frame(height: 200)
                        })
                        .hidden()
            )
            if truncated {
                Button(action: {
                    withAnimation {
                        expanded.toggle()
                    }
                }, label: {
                    Text(readMoreText)
                        .font(.custom("Inter-Bold", size: 14))
                        .foregroundStyle(.purplishBlue)
                })
            }
        }
        .font(.custom("Inter-Regular", size: 16))
        .foregroundStyle(.lightG)
    }
}

#Preview {
    ReadMoreView(text: "A beautiful seaside villa with stunning ocean views. It clings to the rugged cliffs of Oia, Santorini, a postcard-perfect village known for its whitewashed houses cascading down the hillside. Gaze out from your private sanctuary, and the endless blue of the Aegean Sea stretches before you, punctuated by volcanic islands and dramatic rock formations.", linelimit: 3)
}
