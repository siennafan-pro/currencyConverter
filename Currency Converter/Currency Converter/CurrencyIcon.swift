//
//  CurrencyIcon.swift
//  Currency Converter
//
//  Created by SIYUN FAN on 5/8/2024.
//

import SwiftUI

struct CurrencyIcon: View {
    
    let currencyImage: ImageResource
    let currencyName: String
    
    var body: some View {
        ZStack(alignment: .bottom, content: {
            Image(currencyImage)
                .resizable()
                .scaledToFit()
            
            Text(currencyName)
                .padding(3)
                .font(.caption)
                .bold()
                .frame(maxWidth: .infinity)
                .background(.brown.opacity(0.75))
        })
        .padding(3)
        .frame(width: 100,height: 100)
        .background(.brown)
        .clipShape(.rect(cornerRadius: 25))
    }
}

#Preview {
    CurrencyIcon(currencyImage: .copperpenny, currencyName: "Copper")
}
