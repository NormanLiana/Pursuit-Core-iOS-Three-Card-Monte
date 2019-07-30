//
//  ViewController.swift
//  Three Card Monte in Xcode
//
//  Created by Liana Norman on 7/29/19.
//  Copyright © 2019 Liana Norman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let kingCard = UIImage(named: "kingCard")
    let threeCard = UIImage(named: "threeCard")
    let cardBackRed = UIImage(named: "cardBackRed")
    var arrayOfCard = ["threeCard", "kingCard"]
    
    @IBOutlet weak var firstCard: UIButton!
    
    
    @IBOutlet weak var secondCard: UIButton!
    
    
    @IBOutlet weak var thirdCard: UIButton!
    
    
    @IBOutlet weak var pickWinLose: UILabel!
    

    @IBAction func firstCardFunc(_ sender: UIButton) {
        let randCard = arrayOfCard.randomElement()
        switch randCard {
        case "threeCard":
            firstCard.setImage(threeCard, for: UIControl.State.normal)
            pickWinLose.text = "Wrong card, loser!"
            secondCard.setImage(kingCard, for: UIControl.State.normal)
            firstCard.isEnabled = false
            secondCard.isEnabled = false
            thirdCard.isEnabled = false
        default:
            firstCard.setImage(kingCard, for: UIControl.State.normal)
            pickWinLose.text = "Winner, winner, chicken dinner!"
            firstCard.isEnabled = false
            secondCard.isEnabled = false
            thirdCard.isEnabled = false
            
        }
    }
    
    
    @IBAction func secondCardFunc(_ sender: UIButton) {
        let randCard = arrayOfCard.randomElement()
        switch randCard
    }
    
    
    @IBAction func thirdCardFunc(_ sender: UIButton) {
    }
    
    
    @IBAction func newGameFunc(_ sender: UIButton) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

