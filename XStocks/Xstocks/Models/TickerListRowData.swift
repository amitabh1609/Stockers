//
//  TickerListRowView.swift
//  Xstocks
//
//  Created by Amitabh Choudhury on 10/01/23.
//

import Foundation
typealias PriceChange = (price: String, change: String)

struct TickerListRowData {
    
    enum RowType {
        case main
        case search(isSaved: Bool, onButtonTapped: () -> ())
    }
    
    let symbol: String
    let name: String?
    let price: PriceChange?
    let type: RowType
}
