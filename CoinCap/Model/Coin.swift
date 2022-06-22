//
//  Coin.swift
//  CoinCap
//
//  Created by Maksim Skrypka on 21.06.2022.
//

import Foundation


struct CoinArray: Codable {
    let data : [Coin]
}

struct Coin : Codable {
    
    let id: String
    let name: String
    let symbol: String
    let priceUsd: String
}
