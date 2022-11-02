//
//  File.swift
//  
//
//  Created by Amitabh Choudhury on 15/10/22.
//

import Foundation
import StocksAPI

@main
struct StocksAPIExec {
    static let stockAPI = StocksAPI()
    static func main() async{
//        let (data, _) = try! await URLSession.shared.data(from: URL(string:
//                                                                   "https://query1.finance.yahoo.com/v7/finance/quote?")!)
//        let quoteResponse = try!
//            JSONDecoder().decode(QuoteResponse.self, from: data)
//
//        print(quoteResponse)
        
        
//        let(searchData, _) = try! await URLSession.shared.data(from: URL(string:
//                                                                        "https://query1.finance.yahoo.com/v1/finance/search?q=Tesla")!)
//        let searchResponse = try!
//        JSONDecoder().decode(SearchTickersResponse.self, from: searchData)
//
//        print(searchResponse)
        
//        let(chartData, _) = try! await URLSession.shared.data(from: URL(string:
//                                                                        "https://query1.finance.yahoo.com/v8/finance/chart/AAPL?range=1m&includeTimestamp=true&indicators=quote")!)
//        let chartResponse = try!
//        JSONDecoder().decode(ChartResponse.self, from: chartData)
//
//        print(chartResponse)
        do{
            let quotes  = try await stockAPI.fetchQuotes(symbols: "")
            print(quotes)

            let tickers = try await stockAPI.searchTickers(query: "tesla")
            print(tickers)
            
            if let chart = try await stockAPI.fetchChartData(symbol: "AAPL", range: .oneDay){
                print(chart)
            }
        }
        catch{
            print(error.localizedDescription)
        }
    }
}
