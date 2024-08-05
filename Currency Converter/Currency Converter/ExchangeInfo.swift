//
//  ExchangeInfo.swift
//  Currency Converter
//
//  Created by SIYUN FAN on 5/8/2024.
//

import SwiftUI

struct ExchangeInfo: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack{
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            VStack{
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .tracking(3)
                
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title2)
                    .padding()
                
                ExchangeRates(leftImage: .goldpiece, text: "1 Gold Piece = 4 God Pennies", rightImage: .goldpenny)
                
                ExchangeRates(leftImage: .goldpenny, text: "1 Gold Penny = 4 Silver Pieces", rightImage: .silverpiece)

                ExchangeRates(leftImage: .silverpiece, text: "1 Silver Piece = 4 Silver Pennies", rightImage: .silverpenny)
                
                ExchangeRates(leftImage: .silverpenny, text: "1 Silver Penny = 100 Copper Pennies", rightImage: .copperpenny)
                
                Button("Done"){
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .padding()
                .foregroundColor(.white)
            }.foregroundStyle(.black)
        }
    }
}

#Preview {
    ExchangeInfo()
}
