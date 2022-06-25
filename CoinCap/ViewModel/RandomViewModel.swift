//
//  RandomViewController.swift
//  CoinCap
//
//  Created by Maksim Skrypka on 25.06.2022.
//

import Foundation

class RandomViewModel {
    
    var coin = [Coin]()
    
    func random() {
        coin.randomElement()
    }
}
