//
//  ViewController.swift
//  SingletonTester
//
//  Created by SCOTT E RESH on 4/7/20.
//  Copyright © 2020 Silly Goose Software. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var value1SegmentOutlet: UISegmentedControl!
    
    @IBOutlet weak var value2SegmentOutlet: UISegmentedControl!
    
    @IBOutlet weak var userTypeSegmentOutlet: UISegmentedControl!
    
    @IBOutlet weak var loginButtonOutlet: UIButton!
    
    @IBOutlet weak var userEnteredString: UITextField!
    
    
    var value1: Int        = -1

    var value2: Int        = -1

    var userTypeValue: Int = -1
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        loginButtonOutlet.alpha     = 0.4
        
        loginButtonOutlet.isEnabled = false
                
    }
    
    @IBAction func value1Chosen() {
        
        value1 = value1SegmentOutlet.selectedSegmentIndex
        
        MySingleton.shared.setValue1(value: value1 )
        
        checkAllValues()

    }
    
    @IBAction func value2Chosen() {
        
        value2 = value2SegmentOutlet.selectedSegmentIndex

        MySingleton.shared.setValue2(value: value2 )

        checkAllValues()
        
    }
    
    @IBAction func userTypeChosen() {
        
        userTypeValue = userTypeSegmentOutlet.selectedSegmentIndex
        
        MySingleton.shared.setUserType(value: userTypeValue )
        
        checkAllValues()
        
    }
    
    @IBAction func userEnteredTextChanged() {
        
        MySingleton.shared.setUserEnteredString(theString: userEnteredString.text ?? "Empty" )
        
        checkAllValues()

    }
    
    
    
    func checkAllValues() {
        
        if value1 < 0 {
            return
        }
        
        if value2 < 0 {
            return
        }
        
        if userTypeValue < 0 {
            return
        }
        
        if userEnteredString.text!.count < 1 {
            return
        }
                
        loginButtonOutlet.alpha     = 1.0
        
        loginButtonOutlet.isEnabled = true
        
    }
    
}

