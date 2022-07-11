//
//  File.swift
//  DZ_6
//
//  Created by Азария on 10.07.2022.
//

import Foundation




struct Queue<T> {
    var queueArray: [T] = [] // Массив (очередь) из клиентов
    var listOfClients: [T] = [] // Массив (список) обработаных клиентов
    
    mutating func putInAQueue(element: T){ // Добавление человека в очередь
        queueArray.append(element)
        print("\(element)Вы были добавлены в очередь. Ожидайте.\n")
    }
    
    mutating func processingDataClients(){ // Запускаем в кабинет для "лечения"
        var namber = 0 // Перемення для показания номера человека который зайдёт в кабинет
        while queueArray.count != 0 { // Берём людей из очереди пока не закончаться
            
            // Не предумал что будет происходить с человеком в кабинете)) Поэтому будем только осматривать и отпускать домой ¯\(°_o)/¯
            namber += 1

            print("Пациент №\(namber), проходите в кабинет для осмотра")
            listOfClients.append(queueArray.last ?? 0 as! T)  // Помещаем человека в базу клиентов 
            queueArray.removeLast() // Отправляем человека домой
            print("Спасибо что пришли, ничем вам помоч не можем. Уходите (ಠ‿ಠ)\n")
        }
        
    }
}
