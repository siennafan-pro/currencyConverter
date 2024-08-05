//
//  InputSection.swift
//  Currency Converter
//
//  Created by SIYUN FAN on 5/8/2024.
//

import SwiftUI

struct InputSection: View {
    @Binding var currency: Currency
    @Binding var amount: String
    @FocusState var typing
    @Binding var showSelectCurrency: Bool
    var isLeft: Bool
    var body: some View {
            VStack {
                HStack {
                    if isLeft {
                        Image(currency.image)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 33)

                        Text(currency.name)
                            .font(.headline)
                            .foregroundStyle(.white)
                    } else {
                        Text(currency.name)
                            .font(.headline)
                            .foregroundStyle(.white)

                        Image(currency.image)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 33)
                    }
                }
                .padding(.bottom, -5)
                .onTapGesture {
                    showSelectCurrency.toggle()
                }
                .popoverTip(CurrencyTip(), arrowEdge: .bottom)

                TextField("Amount", text: $amount)
                    .textFieldStyle(.roundedBorder)
                    .focused($typing)
                    .keyboardType(.decimalPad)
                    .multilineTextAlignment(isLeft ? .leading : .trailing)
            }
        }
}

#Preview {
    InputSection(currency: .constant(.silverPenny), amount: .constant(""), showSelectCurrency: .constant(false), isLeft: false)
}
