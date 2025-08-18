//
//  SignUpTestCases.swift
//  HackerNewsTests
//
//  Created by Dhathri Bathini on 8/18/25.
//

import XCTest
@testable import HackerNews

final class SignUpTestCases: XCTestCase {
    
    var signUpViewController: SignUpViewController!
    
    override func setUpWithError() throws {
       signUpViewController = SignUpViewController()
    }

    override func tearDownWithError() throws {
        signUpViewController = nil
    }
    
    func testValidateValueifPresent() {
        XCTAssertEqual(signUpViewController?.validateValueifPresent(""),false)
        XCTAssertEqual(signUpViewController?.validateValueifPresent("dbathini@luc.edu"),true)
    }
    
    
    func testValidateMatch(){
        XCTAssertEqual(signUpViewController?.validateMatch("secret","secret"),true)
        XCTAssertEqual(signUpViewController?.validateMatch("secret","Secret"),false)
    }
    
    func testValidateEmailFormat(){
        XCTAssertEqual(signUpViewController?.validateFormat("dbathini@luc.edu"),false)
    }
    
    func testValidateLength(){
        XCTAssertEqual(signUpViewController?.validateLength("123456"),true)
        XCTAssertEqual(signUpViewController?.validateLength("123"),false)
    }
    
}

