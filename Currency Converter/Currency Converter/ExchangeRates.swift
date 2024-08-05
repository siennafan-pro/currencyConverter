//
//  ExchangeRates.swift
//  Currency Converter
//
//  Created by SIYUN FAN on 5/8/2024.
//

import SwiftUI

struct ExchangeRates: View {
    
    let leftImage: ImageResource
    let text: String
    let rightImage: ImageResource
    var body: some View {
        HStack{
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            Text(text)
            
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

#Preview{
    ExchangeRates(leftImage: .goldpiece, text: "1 Gold Piece = 4 Gold Pennies", rightImage: .goldpenny)
}
