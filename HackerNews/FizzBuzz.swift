//
//  FizzBuzz.swift
//  HackerNews
//
//  Created by Dhathri Bathini on 8/15/25.
//

import Foundation

struct FizzBuzz{
    func checkFizzBuzz(_ n: Int) -> String {
            if (n % 3 == 0 && n % 5 == 0) {
                return "FizzBuzz"
            }
            else if n % 3 == 0 {
                return "Fizz"
            }
            else if n % 5 == 0 {
                return "Buzz"
            }
        else{
            return "\(n)"
        }
    }
}





