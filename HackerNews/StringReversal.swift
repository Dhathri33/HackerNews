//
//  StringReversal.swift
//  HackerNews
//
//  Created by Dhathri Bathini on 8/15/25.
//

import Foundation

struct StringReversal {
    func reverseString(_ input: String) -> String {
        var reversedString = ""
        for char in input.reversed() {
            reversedString += String(char)
        }
        return reversedString
    }
}
