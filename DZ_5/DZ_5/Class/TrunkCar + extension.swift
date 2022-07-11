//
//  File1.swift
//  DZ_5
//
//  Created by Азария on 11.07.2022.
//

import Foundation

class TrunkCar: Car{
    var mark = "Бензовоз"
    var year = 2010
    var enginePower = 2.0
    let volumeTank = 11000 // отличительное свойство от класса SportCar
    var enjine: Engine = .off
    var windovs: Windows = .close
            
    func printCar(){
        print("Марка автомобиля - \(mark) \nГод - \(year) \nМощность двигателя - \(enginePower) \nОбъем цистерны - \(volumeTank) \nДвигатель - \(enjine.rawValue) \nСтёкла - \(windovs.rawValue)")
    }
}

extension TrunkCar: CustomStringConvertible{
    
    var description: String {
        return mark.description
    }
}
