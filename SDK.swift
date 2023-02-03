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
    
    private func randomIntString() -> String {
        return String(randomInt)
    }
    
    public static func getRandom() -> String {
        return Self().randomIntString()
    }
    
    public static func getRandomFromC() -> String {
        return String(random_number(0, 100))
    }
}
