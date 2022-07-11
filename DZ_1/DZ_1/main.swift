

import Foundation


var p: Int


func p1() {
    //Задача 1
    
    var a, b, c, d: Double
    
    print("\nЗадача № 1: Решение квадратного уравнения.\n Введите первое число : ")
    a = Double(readLine()!)!
    print(" Введите второе число : ")
    b = Double(readLine()!)!
    print(" Введите третье число : ")
    c = Double(readLine()!)!
    
    d = pow(b, 2) - 4 * a * c
    
    if d < 0 {
        print(" Решеня нет")
    }
    else if d > 0 {
        print("\n Решение есть\n х1 = ", NSString(format: "%.2f", (-b + sqrt(d)) / (2 * a), "\n x2 = ", (-b + sqrt(d)) / (2 * a)))
    }
    else {
        print("\n Решение есть\n х1 = ", NSString(format: "%.2f", -b / (2 * a)), "\n")
    }
}





func p2() {
    //Задача 2
    
    var a1, b1, d1: Double
    
    print("\nЗадача № 2: Нахождение площади, периметра и гипотенузы треугольника.\n  Введите первый катет : ")
    a1 = Double(readLine()!)!
    print(" Введите второй катет : ")
    b1 = Double(readLine()!)!
    d1 = sqrt(pow(a1, 2) + pow(b1, 2))
    
    print("\n Гипотенуза :", NSString(format: "%.2f", d1))
    print(" Площа :", NSString(format: "%.2f", 1 / 2 * a1 * b1))
    print(" Периметр :", NSString(format: "%.2f", a1 + b1 + d1))
}







func p3() {
    //Задача 3
    
    let suma, proc: Double
    
    print("\nЗадача № 3: \n Введите сумму вклада : ")
    suma = Double(readLine()!)!
    print(" Введите годовой процент : ")
    proc = Double(readLine()!)!
    print(" Введите количество лет : ")
    let year = Int(readLine()!)!
    
    // В зависисомти от числа меняеться слово "лет"
    let yearDivision = year % 10
    var yearString = "лет"
    
    if year != 11 && year != 12 && year != 13 && year != 14{
    switch yearDivision{
    case 1:
        yearString = "год"
    case 2,3,4:
        yearString = "года"
        
    default:
        break
    }
    }
    
    print("Ваш доход через", NSString(format: "%.0f", Double(year)), yearString, "=", NSString(format: "%.2f", suma * pow(( 1 + (proc / 100)), Double(year))))
}






// Цыкл запроса заданий
p = 0

while p < 4 && -1 < p{
    print(" \n\nДля выхода нажмите любое другое число \nВведите номер примера (1, 2 или 3) :")
    p = Int(readLine()!)!
    if p == 1 {p1()}
    else if p == 2 {p2()}
    else if p == 3 {p3()}
    else {print("\n Заданий нет")
        break
    }
}
