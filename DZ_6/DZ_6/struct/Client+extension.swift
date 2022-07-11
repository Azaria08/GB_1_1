//
//  Client.swift
//  DZ_6
//
//  Created by Азария on 10.07.2022.
//

import Foundation

struct Client: User{ // Данные клиента для занисение их в очередь
    
    let lastName: String
    let firstName: String
    let age: Int
    let disease: String // Диагноз/Болезнь
    let number: Int
    
}

extension Client: CustomStringConvertible{
    
    var description: String{
"""
Номер в очереди - №\(number)
Фамилия - \(lastName)
Имя - \(firstName)
Возвраст - \(age)
Болезнь/Диагноз - \(disease)
\n
"""
    }
}
