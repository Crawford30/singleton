//
//  SecondViewController.swift
//  SingletonTester
//
//  Created by SCOTT E RESH on 4/7/20.
//  Copyright © 2020 Silly Goose Software. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var value1Results: UILabel!
    
    @IBOutlet weak var value2Results: UILabel!
    
    @IBOutlet weak var userTypeResults: UILabel!
    
    @IBOutlet weak var userEnteredStringResults: UILabel!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        switch MySingleton.shared.getValue1() {

            case 0:
                value1Results.text = "Pink Floyd"
                
            case 1:
                value1Results.text = "Vangelis"
                
            case 2:
                value1Results.text = "ZZTop"
                
            default:
                value1Results.text = ""
            
        }
        
        switch MySingleton.shared.getValue2() {

            case 0:
                value2Results.text = "Basil Fawlty"
                
            case 1:
                value2Results.text = "Del Trotter"
                
            case 2:
                value2Results.text = "Richard Bucket"
                
            default:
                value2Results.text = ""
            
        }
        
        switch MySingleton.shared.getUserType() {

            case 0:
                userTypeResults.text = "Provider"
                
            case 1:
                userTypeResults.text = "Requester"
                
            default:
                userTypeResults.text = ""
            
        }
        
        userEnteredStringResults.text = MySingleton.shared.getUserEnteredString()

    }

}
