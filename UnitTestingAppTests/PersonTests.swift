//
//  PersonTests.swift
//  UnitTestingAppTests
//
//  Created by Андрей Аверьянов on 24.02.2022.
//

import XCTest
@testable import UnitTestingApp

class PersonTests: XCTestCase {
    
    var image: UIImage?
    var imageData: Data?

    override func setUp() {
        super.setUp()
        image = UIImage(systemName: "person.crop.circle")
        imageData = image?.pngData()
    }
    
    
    
    override func tearDown() {
        image = nil
        imageData = nil
        super.tearDown()
    }

    func testInitPersonWithNameAndPhone() {
        let person = Person(name: "Foo", phone: "Bar")
        XCTAssertNotNil(person)
    }
    
    func testInitPersonWithFullNameAndPhone() {
        let person = Person(name: "Foo", surname: "Bar", phone: "Baz")
        XCTAssertNotNil(person)
    }
    
    func testWhenGivenNameAndPhoneSetsNameAndPhone() {
        let person = Person(name: "Bar", phone: "Baz")
        
        XCTAssertEqual(person.name, "Bar")
        XCTAssertEqual(person.phone, "Baz")
    }
    
    func testWhenGivenSurnameSetsSurname() {
        let person = Person(name: "Foo", surname: "Bar", phone: "Baz")
        
        XCTAssertEqual(person.surname, "Bar")
    }
    
    func testInitPersonWithDate() {
        let person = Person(name: "Foo", phone: "Bar")
        
        XCTAssertNotNil(person.date)
    }
    
    func testInitPersonWithImage() {
        let person = Person(name: "Foo", phone: "Baz", image: imageData)
        
        XCTAssertNotNil(person.image)
    }
    
    func testInitPersonWithFullNameAndImage() {
        let person = Person(name: "Foo", surname: "Bar", phone: "Baz", image: imageData)
        
        XCTAssertNotNil(person.image)
    }
    
}
