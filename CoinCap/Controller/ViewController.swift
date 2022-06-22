//
//  ViewController.swift
//  CoinCap
//
//  Created by Maksim Skrypka on 21.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var coinCollectionView: UICollectionView!
    
    var coins = [Coin]()
    let urlSessionApi = UrlSessionApi()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        urlSessionApi.getApi {
            data in
            self.coins = data
            
            DispatchQueue.main.async {

               self.coinCollectionView.reloadData()

            }

        }
        self.coinCollectionView.dataSource = self
        self.coinCollectionView.delegate = self
        self.coinCollectionView.collectionViewLayout = UICollectionViewFlowLayout()
    }
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return coins.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CoinCell
        let coins = coins[indexPath.row]
        cell.setup(coin: coins)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 400, height: 100)
    }
    
    

    
}

