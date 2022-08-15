//
//  ViewController.swift
//  24-JSON
//
//

import UIKit
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
    }
    
    
    func fetchData() {
        if let url = URL(string: "https://api.magicthegathering.io/v1/cards") {
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                
                if error != nil {
                    //print("erorr")
                } else {
                    if let response = response {
                        //print(response)
                        if let data = data, let card = try? JSONDecoder().decode(Cards.self, from: data) {
                            for i in card.cards {
                                
                                print("Name card: \(i.name ?? "")")
                                print("Artist: \(i.artist ?? "")")
                                print("ManaCost: \(i.manaCost ?? "")")
                                print("SetName: \(i.setName ?? "")")
                                print("Type: \(i.type ?? "") \n")
                                print("-------------------")
                            }
                        }
                    }
                }
            }.resume()
        }
    }
}
