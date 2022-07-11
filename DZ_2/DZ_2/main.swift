import Foundation






func ChotNechot (){
print("\nВведите число для проверки деления на 2: \nДля выхода нажмите 0")
var nomber = Int(readLine()!)!

while nomber != 0 {
    if nomber.isMultiple(of: 2) {
    print("\tЧисло \(nomber) чётное")
}else{
    print("\tЧисло \(nomber) не чётное")
}
    print("\nВведите число для проверки деления на 2: \nДля выхода нажмите 0")
    nomber = Int(readLine()!)!
}
}



func DelenieNa3 () {
print("\nВведите число для проверки деления на 3: \nДля выхода нажмите 0")
  var nomber = Int(readLine()!)!

while nomber != 0 {
    if nomber.isMultiple(of: 3) {
    print("\tЧисло \(nomber) делится на 3")
}else{
    print("\tЧисло \(nomber) не делится на 3")
}
    print("\nВведите число для проверки деления на 3: \nДля выхода нажмите 0")
    nomber = Int(readLine()!)!
}
}



func Masiv () {
var massiv : [Int] = []
    for i in 1...100 {
    massiv.append(i)
}
    var filtermassiv1: [Int]
    filtermassiv1 = massiv.filter{$0 % 2 > 0 && $0 % 3 > 0 }
print(filtermassiv1)
}



// та  же программа но через удаление :
//var massiv: [Int] = []
//print("Введите придел чисел :")
//var n = Int(readLine()!)!
//for i in stride(from: 1, to: n, by: 1) {
//    massiv.append(i)
//}
//for i in massiv {
//    if (i % 2 == 0 || i % 3 != 0) {
//        massiv.remove(at: massiv.firstIndex(of: i)!)
//}
//}
//print (massiv)


func Fibonachi () {
    var fibonachi : [Decimal] = []
    var f1, f2 : Decimal
    f1 = 1; f2 = 1
    for i in 1...100
    {
        if i % 2 > 0 {
        fibonachi.append(f1 + f2)
            f1 = f1 + f2
        } else {
            fibonachi.append(f1 + f2)
            f2 = f1 + f2
        }
    }
    print(fibonachi)
}



func Prosto() {
    
    print("\nЗадайте придел  простих чисел :\n\tДля выхода нажмите 0")
    var n = Int(readLine()!)!
    var p = 5
    var prosto: [Int] = []
    while n != 0 {
    for j in stride(from: 2, to: n + 1, by: 1) {
        for g in stride(from: 2, to: j, by: 1) {
            if j % g == 0 {
               p = p + 1
            }
        }
        if p == 0 {
            prosto.append(j)
        } else {
            p = 0
        }
    }
        print("\n", prosto)
        prosto.removeAll()
        print("\nЗадайте придел простих чисел :\n\tДля выхода нажмите 0")
        n = Int(readLine()!)!
}
}



//=======================================================================


var ckl: Int
print("Введите нормер заданя: \nДля выхода нажмите 0")
ckl = Int(readLine()!)!
while ckl != 0 {
switch ckl {
    case 1:
    ChotNechot()
      case 2 :
      DelenieNa3()
          case 3 :
          Masiv()
            case 4 :
            Fibonachi()
                case 5 :
                Prosto()

default:
    break
    }
   print("\n\nВвндите нормер заданя: \nДля выхода нажмите 0")
    ckl = Int(readLine()!)!
}
