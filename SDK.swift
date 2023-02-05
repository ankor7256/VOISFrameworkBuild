//
//  SDK.swift
//  VOISPrivateFramework
//
//  Created by Andrew K on 01.02.23.
//

import Foundation

public struct VoisOpenSDK {
    
    private var randomInt: Int {
        get {
            return Int.random(in: 0...100)
        }
    }
    
    private func randomIntString() -> String {  //private SDK function
        return String(randomInt)
    }
    
    public static func getRandom() -> String {  //public SDK function (from private swift implementation)
        return Self().randomIntString()
    }
    
    public static func getRandomFromC() -> String { //public SDK function
        return String(random_number(0, 100))
    }
    
    public static func getMiddleFromC() -> String { //public SDK function
        return String(middle_number(0, 30))
    }
}
