//
//  Calculator.swift
//  HackerNews
//
//  Created by Dhathri Bathini on 8/15/25.
//

import Foundation

struct Calculator{
    func sum(_ a: Double?, _ b: Double?) -> Double{
        return (a ?? 0) + (b ?? 0)
    }
    
    func sub(_ a: Double?, _ b: Double?) -> Double{
        return (a ?? 0) - (b ?? 0)
    }
    
    func multiply(_ a: Double?, _ b: Double?) -> Double{
        return (a ?? 1) * (b ?? 1)
    }
    
    func divide(_ a: Double?, _ b: Double?) -> Double{
        if((b ?? 1)==0){
            return 0
        }
        return (a ?? 1) / (b ?? 1)
    }
}
