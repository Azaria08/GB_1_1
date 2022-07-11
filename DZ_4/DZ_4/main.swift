import Foundation


class Car{
    
    enum Engine: String {
        case on = "Запущен"
        case off = "Заглушен"
    }

    enum Windows: String{
        case open = "Открыты"
        case close = "Закрыты"
    }

    enum Full: String{
        case full = "Заполнен"
        case noFull = "Не заполнен"
    }
    
    let mark: String
    let year: Int
    let baggage: Int
    var engine: Engine = .off
    var windows: Windows = .close
    var baggageFull: Full

    func baggageFullCar(baggageFullCar: Full){
        self.baggageFull = baggageFullCar
    }

    func engineCar(engineСondition: Engine){
        self.engine = engineСondition
    }

    func windowsCar(windowsState: Windows){
        self.windows = windowsState
    }

    func printCar(){
        print()
        print("Автомобиль марки: \(mark)\n Год выпуска: \(year)\n Обьём багажника: \(baggage) литров\n Багажник: \(baggageFull.rawValue)\n Двигатель: \(engine.rawValue)\n Окна: \(windows.rawValue)")
    }
    init(mark: String, year: Int, baggage: Int, baggageFull: Full){
        self.mark = mark
        self.year = year
        self.baggage = baggage
        self.baggageFull = baggageFull
    }
}

class TrunkCar: Car{
    
    enum Kuzov: String{
        case up = "Поднят"
        case down = "Опущен"
    }

    enum Headlights: String{
        case off = "Свет выключен"
        case dippeBeam = "Включён ближний свет"
        case highBeam = "Включён дальний свет"
    }
    
    var kuzov: Kuzov
    var headlights: Headlights = .off

    func kuzovPosition(kuzovState: Kuzov){
        self.kuzov = kuzovState
        }
    
    func headlightsPosition(headlights: Headlights){
        self.headlights = headlights
    }

    override func printCar(){
        print()
        super.printCar()
        print(" Кузов: \(kuzov.rawValue)\n Фары: \(headlights.rawValue)")
    }
    init(mark: String, year: Int, baggage: Int, baggageFull: Car.Full, kuzov: Kuzov) {
        self.kuzov = kuzov
        super.init(mark: mark, year: year, baggage: baggage, baggageFull: baggageFull)
    }
    
}

enum Nitro: String{
    case nill = "Нитро отсуцтвует"
    case on = "Нитро активировано"
    case off = "Нитро не активировано"
}


class SportCar: Car{
    
    enum Nitro: String{
        case nill = "Нитро отсуцтвует"
        case on = "Нитро активировано"
        case off = "Нитро не активировано"
    }
    
    var kilometr: Int = 0
    var nitro: Nitro
    
    override func printCar(){
        print()
        super.printCar()
        print(" Пробег: \(kilometr)\n Впрыск азота: \(nitro.rawValue)")
    }
    
    init(mark: String, year: Int, baggage: Int, baggageFull: Full, kilometr: Int, nitro: Nitro){
        self.nitro = nitro
        self.kilometr = kilometr
        super.init(mark: mark,year: year, baggage: baggage, baggageFull: baggageFull)
    }
}

let mazda = Car(mark: "Mazda", year: 2000, baggage: 250, baggageFull: .noFull)
mazda.windows = .open
mazda.printCar()

let zil = TrunkCar(mark: "ЗиЛ", year: 2005, baggage: 77600, baggageFull: .noFull, kuzov: .down)

zil.headlights = .highBeam
zil.printCar()

let audi = SportCar(mark: "Audi R8", year: 2022, baggage: 400, baggageFull: .noFull, kilometr: 100, nitro: .off)

audi.engine = .on
audi.nitro = .on
audi.kilometr += 200000
audi.printCar()
