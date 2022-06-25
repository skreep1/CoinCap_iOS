//
//  CollectionViewCell.swift
//  CoinCap
//
//  Created by Maksim Skrypka on 22.06.2022.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var coinTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func coinCell(coinCell: Coin) {
        coinTitle.text = coinCell.name
    }
}
