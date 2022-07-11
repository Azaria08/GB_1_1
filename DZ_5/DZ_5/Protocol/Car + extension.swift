//
//  Car+extension.swift
//  DZ_5
//
//  Created by Азария on 11.07.2022.
//

import Foundation

protocol Car {
    var mark: String { get set }
    var year: Int { get set }
    var enginePower: Double { get set }
    var enjine: Engine { get set }
    var windovs: Windows { get set }
     
    func printCar()
}

extension Car{
    mutating func positionWindovs(state: Windows) {
        self.windovs = state
    }
    mutating func positionEnjine(state: Engine) {
        self.enjine = state
    }
}
