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
    var loginViewController: LoginViewController!
    
    override func setUpWithError() throws {
       signUpViewController = SignUpViewController()
        loginViewController = LoginViewController()
    }

    override func tearDownWithError() throws {
        signUpViewController = nil
        loginViewController = nil
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
    
    func testLoginEmailFormat(){
        XCTAssertEqual(loginViewController?.validateFormat("dbathini@luc.edu"),false)
        XCTAssertEqual(loginViewController?.validateFormat("dbathini@gmail.com"),true)
    }
    
    func testLoginPasswordLength(){
        XCTAssertEqual(loginViewController?.validateLength("123456"),true)
        XCTAssertEqual(loginViewController?.validateLength("123"),false)
    }
    
    func testLoginValidateValueifPresent() {
        XCTAssertEqual(loginViewController?.validateValueifPresent(""),false)
        XCTAssertEqual(loginViewController?.validateValueifPresent("dbathini@luc.edu"),true)
    }
    
}

