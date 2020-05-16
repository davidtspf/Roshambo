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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: Compare user's play with random hand value
    override func prepare(for segue: UIStoryBoardSegue, sender: Any?) {
        
        if segue.identifier = "compareHands" {
            
            let controller = segue.destination as! OutcomeViewController
            
            controller.computerValue = self.randomHandValue()
            
            
            
        }
    }

    // MARK: Generate hand value
    
    // randomly generates a Int from 1 to 3
    // 1 = rock; 2 = paper; 3 = scissors
    func randomHandValue() -> Int {
        let randomValue = 1 + arc4random() % 3
        return Int(randomValue)
    }

}

