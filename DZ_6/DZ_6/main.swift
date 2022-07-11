//
//  main.swift
//  DZ_6
//
//  Created by Азария on 10.07.2022.
//

import Foundation

/*
 
 Прогамма для:
1) Записи людей в очередь к врачу;
2) Записи людей в список посетивших сеанс у врача. (Для истории Больницы)
 
 */


// Создаём клиентов
let client1 = Client(lastName: "Дзюба", firstName: "Виктор", age: 21, disease: "Синдром балабольства", number: 1)
let client2 = Client(lastName: "Коробок", firstName: "Виталий", age: 67, disease: "Приступы дебилизма", number: 2)
let client3 = Client(lastName: "Герметик", firstName: "Миша", age: 36, disease: "Пришёл по приколу", number: 3)

// Создаём очередь
var queueArray = Queue<Client>()

// Добавляем людей в очередь
queueArray.putInAQueue(element: client1)
queueArray.putInAQueue(element: client2)
queueArray.putInAQueue(element: client3)
// Зписываем в список посетивших больницу
queueArray.processingDataClients()


