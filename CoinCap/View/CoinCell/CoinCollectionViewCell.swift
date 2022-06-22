//
//  CoinCollectionViewCell.swift
//  CoinCap
//
//  Created by Maksim Skrypka on 22.06.2022.
//

import UIKit

class CoinCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var nameCoin: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(coin: Coin) {
        self.nameCoin.text = coin.name
    }
    
}
