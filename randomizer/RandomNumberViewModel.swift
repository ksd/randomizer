//
//  RandomNumberViewModel.swift
//  randomizer
//
//  Created by ksd on 16/08/2024.
//

import SwiftUI

@Observable
class RandomNumberViewModel {
    let title: String = "Random Number"
    var randomNumber: Int = 0
    
    // Slider properties
    var maxValueRandomTo: Double = 1000
    var maxSliderValue: Double = 1000
    
    func randomize() {
        randomNumber = Int.random(in: 0..<Int(maxValueRandomTo))
    }
}
