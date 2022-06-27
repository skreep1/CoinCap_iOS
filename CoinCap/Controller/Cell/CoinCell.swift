//
//  CoinsViewCell.swift
//  CoinCap
//
//  Created by Maksim Skrypka on 22.06.2022.
//

import UIKit

class CoinCell: UICollectionViewCell {
    
    @IBOutlet weak var nameCoin: UILabel!
    @IBOutlet weak var symbolCoin: UILabel!
    @IBOutlet weak var priceCoin: UILabel!
    
    func setup(coin: Coin) {
        self.nameCoin.text = coin.name
        self.symbolCoin.text = coin.symbol
        self.priceCoin.text = coin.priceUsd
        
        
    }
    
}
