//
//  MySingleton.swift
//  SingletonTester
//
//  Created by SCOTT E RESH on 4/7/20.
//  Copyright © 2020 Silly Goose Software. All rights reserved.
//

import Foundation

class MySingleton {
      
   // Create a static, constant instance of MySingleton and initialize.
   static let shared = MySingleton()

    
   private var value1Common:   Int

   private var value2Common:   Int

   private var userTypeCommon: Int

   private var userEnteredString: String

    
    private init() {     // A private initializer can only be called by this class itself.
       
        value1Common   = -1
    
        value2Common   = -1
    
        userTypeCommon = -1
    
        userEnteredString = ""

    }
    
    func setValue1(value:Int)->() {
        
        value1Common = value
        
    }

    func setValue2(value:Int)->() {
        
        value2Common = value
        
    }

    func setUserType(value:Int)->() {
        
        userTypeCommon = value
        
    }

    
    func getValue1() -> Int {
        
        return value1Common
        
    }

    func getValue2() -> Int {
        
        return value2Common
        
    }

    func getUserType() -> Int {
        
        return userTypeCommon
        
    }
    
    //----------------------------------------------------------------------------------------------------------

    func setUserEnteredString(theString:String)->() {
        
        userEnteredString = theString
        
    }
    
    

    func getUserEnteredString() -> String {
        
        return userEnteredString
        
    }
    
    
    

}
