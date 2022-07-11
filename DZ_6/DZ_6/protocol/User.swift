//
//  File.swift
//  DZ_6
//
//  Created by Азария on 10.07.2022.
//

import Foundation



protocol User{ // Минимальне требования к информации о человеке
 
    var lastName: String {get}
    var firstName: String {get}
    var age: Int {get}
    
}
