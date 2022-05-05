//
//  CWCUnitTestingTests.swift
//  CWCUnitTestingTests
//
//  Created by 山本響 on 2022/05/05.
//

import XCTest
@testable import CWCUnitTesting

class CWCUnitTestingTests: XCTestCase {
    
    var simpleMath: SimpleMath!
    
    override func setUp() {
        simpleMath = SimpleMath()
    }
    
    override func tearDown() {
        simpleMath = nil
    }

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAddTenWorks() {
        // given - Arrange
        var expected: Int = 0
        
        // when - Act
        expected = simpleMath.addTen(number: 10)
        
        // then - Assert
        XCTAssert(expected == 20, "this should be 20")
        XCTAssertTrue(expected == 20)
        XCTAssertEqual(expected, 20, "this should be 20")
    }
    
    func testBeSquareSucceeds() {
        // Given
        var expected = 0
        
        // When
        expected = simpleMath.beSquare(4)
        
        // Then
        XCTAssertEqual(expected, 16)
    }

}
