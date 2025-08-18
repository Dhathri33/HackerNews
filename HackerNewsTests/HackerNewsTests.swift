//
//  HackerNewsTests.swift
//  HackerNewsTests
//
//  Created by Dhathri Bathini on 8/13/25.
//

import XCTest
@testable import HackerNews

final class HackerNewsTests: XCTestCase {
    
    var stringReveral: StringReversal!
    var fizzBuzz: FizzBuzz!
    var objCalculator: Calculator!
    var primeNumber: PrimeNumber!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        stringReveral = StringReversal()
        fizzBuzz = FizzBuzz()
        objCalculator = Calculator()
        primeNumber = PrimeNumber()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        stringReveral = nil
        fizzBuzz = nil
        objCalculator = nil
        primeNumber = nil
        
    }
    
    func testStringReversal() {
        
        XCTAssertEqual(stringReveral.reverseString("Swift"), "tfiwS")
        XCTAssertEqual(stringReveral.reverseString(""), "")
        XCTAssertEqual(stringReveral.reverseString("A"), "A")
        
    }
        
    func testPrimeNumber() {
            
            XCTAssertEqual(primeNumber.checkPrime(2), true)
            XCTAssertEqual(primeNumber.checkPrime(4), false)
            XCTAssertEqual(primeNumber.checkPrime(13), true)
    }
    
    func testFizzBuzz(){
        XCTAssertEqual(fizzBuzz.checkFizzBuzz(15), "FizzBuzz")
        XCTAssertEqual(fizzBuzz.checkFizzBuzz(3), "Fizz")
        XCTAssertEqual(fizzBuzz.checkFizzBuzz(5), "Buzz")
        XCTAssertEqual(fizzBuzz.checkFizzBuzz(2), "2")
    }
    
 
    func testSum() {
        XCTAssertEqual(objCalculator?.sum(1, 2), 3)
        XCTAssertEqual(objCalculator?.sum(nil, nil), 0)
        XCTAssertEqual(objCalculator?.sum(10, nil), 10)
    }
    
    func testsub() {
        XCTAssertEqual(objCalculator?.sub(10, 2), 8)
        XCTAssertEqual(objCalculator?.sub(nil, nil), 0)
        XCTAssertEqual(objCalculator?.sub(10, nil), 10)
    }
    
    func testMul() {
        XCTAssertEqual(objCalculator?.multiply(10, 2), 20)
        XCTAssertEqual(objCalculator?.multiply(nil, nil), 1)
        XCTAssertEqual(objCalculator?.multiply(10, nil), 10)
    }
    
    func testDiv() {
        XCTAssertEqual(objCalculator?.divide(10, 2), 5)
        XCTAssertEqual(objCalculator?.divide(10, 0), 0)
        XCTAssertEqual(objCalculator?.divide(nil, nil), 1)
        XCTAssertEqual(objCalculator?.divide(10, nil), 10)
        
    }
    
    
    

}
