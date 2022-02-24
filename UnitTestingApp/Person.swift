//
//  Person.swift
//  UnitTestingAppTests
//
//  Created by Андрей Аверьянов on 24.02.2022.
//

import Foundation

class Person {
    let name: String
    var surname: String?
    let phone: String
    var image: Data?
    private(set) var date: Date
    
    init(name: String, phone: String, image: Data? = nil) {
        self.name = name
        self.phone = phone
        self.image = image
        date = Date()
    }
    
    init(name: String, surname: String, phone: String, image: Data? = nil) {
        self.name = name
        self.surname = surname
        self.phone = phone
        self.image = image
        date = Date()
    }
}
