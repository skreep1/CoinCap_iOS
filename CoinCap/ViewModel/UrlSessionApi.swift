//
//  Parse.swift
//  CoinCap
//
//  Created by Maksim Skrypka on 21.06.2022.
//

import Foundation


class UrlSessionApi {
    
    func getApi(comp: @escaping ([Coin]) -> ()) {
        let api = URL(string: "https://api.coincap.io/v2/assets")
        
        URLSession.shared.dataTask(with: api!) { data, response, error in
            if error != nil {
                print("error")
                return
            }
            do {
            let result =  try JSONDecoder().decode(CoinArray.self, from: data!)
                comp(result.data)
            } catch {
                
            }
        } .resume()
    }
    }
