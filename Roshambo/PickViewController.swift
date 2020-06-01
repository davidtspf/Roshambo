//
//  PickViewController.swift
//  Roshambo
//
//  Created by DT on 5/13/20.
//  Copyright © 2020 DT. All rights reserved.
//

import Foundation
import UIKit

class PickViewController: UIViewController {
    
    // MARK: Properties
    
    var humanValue: Int?
    
    // MARK: Outlets
    
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    
    // MARK: Compare user's play with random hand value
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "compareHands" {
            
            let controller = segue.destination as! OutcomeViewController
            
            controller.computerValue = self.randomHandValue()
            controller.humanValue = self.humanValue
            
        }
    }
    
    // MARK: Generate hand value
    
    // randomly generates an Int from 1 to 3
    // 1 = rock; 2 = paper; 3 = scissors
    func randomHandValue() -> Int {
        let randomValue = 1 + arc4random() % 3
        return Int(randomValue)
    }
    
    // MARK: Translate self.humanValue
    
    @IBAction func pressRockButton() {
        self.humanValue = 1
        print("1")
    }

    @IBAction func pressPaperButton() {
        self.humanValue = 2
        print("2")
    }
    
    @IBAction func pressScissorButton() {
        self.humanValue = 3
        print("3")
    }

}

