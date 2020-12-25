//
//  ViewController.swift
//  Games
//
//  Created by BigStep on 25/12/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private var lblTitle:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        #if BasketBall
        lblTitle.text = "BasketBall Game"
        #else
        lblTitle.text = "Main Game"
        #endif
    }


}

