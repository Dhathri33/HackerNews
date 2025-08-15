//
//  PrimeNumber.swift
//  HackerNews
//
//  Created by Dhathri Bathini on 8/15/25.
//

import Foundation

struct PrimeNumber {
    func checkPrime(_ n: Int) -> Bool {
        if n <= 1 { return false }
        if n <= 3 { return true }
        for i in 2...Int(Double(n).squareRoot()) {
            if n % i == 0 {
                return false
            }
        }
        return true
    }
}
