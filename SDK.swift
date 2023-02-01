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
    
    public func getRandom() -> String {
        return randomIntString()
    }
}
