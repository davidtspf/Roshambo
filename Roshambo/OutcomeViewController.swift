//
//  OutcomeViewController.swift
//  Roshambo
//
//  Created by DT on 5/16/20.
//  Copyright © 2020 DT. All rights reserved.
//

import Foundation
import UIKit

class OutcomeViewController: UIViewController {
    
    // MARK: Properties
    
    var computerValue: Int?
    var humanValue: Int?

    // MARK: Outlets

    @IBOutlet weak var itsATie: UIImageView!
    
    // MARK: Life cycle
    
    override func viewWillAppear(_ animated: Bool) {
    
        self.itsATie.image = UIImage(named: "d\(self.computerValue)")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}
