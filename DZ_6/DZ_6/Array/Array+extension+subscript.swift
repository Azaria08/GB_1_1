//
//  Array+extension.swift
//  DZ_6
//
//  Created by Азария on 10.07.2022.
//

import Foundation

extension Array{
    
    subscript(safe index: Int) -> Element? { // Безопасное извлечение елементов из массива
        
        if index < 0 || index > count - 1{
            return nil
        }
        return self[index]
    }
}
