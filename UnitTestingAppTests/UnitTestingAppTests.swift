//
//  UnitTestingAppTests.swift
//  UnitTestingAppTests
//
//  Created by Андрей Аверьянов on 22.02.2022.
//

import XCTest
@testable import UnitTestingApp

class UnitTestingAppTests: XCTestCase {
    
    var sut: ViewController!
    
    override func setUp() {
        super.setUp()
        sut = ViewController()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func testLowestVolumeShouldBeZero() {
        // Given
        sut.setVolume(to: -1)
        
        // When
        let volume = sut.volume
        
        // Then
        XCTAssert(volume == 0, "Lowest volume should be equel 0")
    }
    
    func testHeighestVolumeShouldBe100() {
        // Given
        sut.setVolume(to: 101)
        
        // When
        let volume = sut.volume
        
        // Then
        XCTAssert(volume == 100, "Highest volume should be equel 100")
    }
    
    func testNumberOneMustBeGreaterThenNumberTwo() {
        let numberOne = 1
        let numberTwo = 0
        
        let bool = sut.greaterThenValue(x: numberOne, y: numberTwo)
        
        XCTAssert(bool, "The number one must be greater then number two")
    }
    
    func testNumberOneNotBeGreaterThenNumberTwo() {
        let numberOne = 1
        let numberTwo = 2
        
        let bool = sut.greaterThenValue(x: numberOne, y: numberTwo)
        
        XCTAssert(!bool, "The number one not be greater then number two")
    }
    
//    func testPerformanceExample() throws {
//        measure {
//            sut.setVolume(to: 90)
//        }
//    }
    
}
