//
//  CurrencyTip.swift
//  Currency Converter
//
//  Created by SIYUN FAN on 5/8/2024.
//

import TipKit

struct CurrencyTip: Tip {
    var title = Text("Change Currency")
    
    var message: Text? = Text("You can tap on the left or right currency to bring up the Select Currency screen.")
}
