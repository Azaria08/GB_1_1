//
//  File.swift
//  DZ_5
//
//  Created by Азария on 11.07.2022.
//

import Foundation

class SportCar: Car{
    var mark = "Mercedes-Benz C206"
    var year = 2021
    var enginePower = 3.2
    var color = "Крассный" // отличительное свойство от класса TrunkCar
    var enjine: Engine = .off
    var windovs: Windows = .close
    
    func printCar(){
        print("Марка автомобиля - \(mark) \nГод - \(year) \nМощность двигателя - \(enginePower) \nЦвет автомобиля - \(color) \nДвигатель - \(enjine.rawValue) \nСтёкла - \(windovs.rawValue)")
    }
    
}

extension SportCar: CustomStringConvertible{
    
    var description: String {
        return mark.description
    }
}
