//
//  ViewController.swift
//  UnitTestingApp
//
//  Created by Андрей Аверьянов on 22.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    private(set) var volume = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setVolume(to: 101)
    }
    
    func setVolume(to value: Int) {
        volume = min(max(value, 0), 100)
    }
    
    func greaterThenValue(x: Int, y: Int) -> Bool {
        x > y
    }
}

