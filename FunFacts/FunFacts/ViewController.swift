//
//  ViewController.swift
//  FunFacts
//
//  Created by Edward Wilkins on 14/12/2018.
//  Copyright © 2018 Edward Wilkins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactsLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    
    let factProvider = FactProvider()
    let colorProvider = BackgroundColorProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        funFactsLabel.text = factProvider.randomFact()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func showFact() {
        funFactsLabel.text = factProvider.randomFact()
        let randomColor = colorProvider.randomColor()
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
    }
}

