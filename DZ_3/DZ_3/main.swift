import Foundation



enum Engine: String {
    case on = "Запущен"
    case off = "Заглушён"
}

enum Windows: String{
    case open = "Открыты"
    case close = "Закрыты"
}

enum Full: String{
    case full = "Заполнен"
    case noFull = "Не заполнен"
}
struct SportCar {
    var mark: String
    var year: Int
    var baggage: Int
    var engine: Engine = .off
    var windows: Windows = .close
    var baggageFull: Full
    
    mutating func BaggageFullSportCar(BaggageFullSportCar: Full){
        self.baggageFull = BaggageFullSportCar
    }
    
    mutating func EngineSportCar(engineСondition: Engine){
        self.engine = engineСondition
        }
    
    
    mutating func WindowsSportCar(windowsState: Windows){
        self.windows = windowsState
        }
    
    
    func printSportCar(){
        print("Автомобиль марки: \(mark), Год выпуска: \(year), Обьём багажника: \(baggage) литров, Багажник: \(baggageFull.rawValue), Двигатель: \(engine.rawValue), Окна: \(windows.rawValue)")
    }
}
struct TrunkCar {
    var mark: String
    var year: Int
    var baggage: Int
    var engine: Engine = .off
    var windows: Windows = .close
    var baggageFull: Full
    
    mutating func BaggageFullTrunkCar(BaggageFullSportCar: Full){
        self.baggageFull = BaggageFullSportCar
    }
    
    mutating func EngineTrunkCar(engineСondition: Engine){
        self.engine = engineСondition
        }
    
    
    mutating func WindowsTrunkCar(windowsState: Windows){
        self.windows = windowsState
        }
    
    
    func printTrunkCar(){
        print("Автомобиль марки: \(mark), Год выпуска: \(year), Обьём багажника: \(baggage) литров, Багажник: \(baggageFull.rawValue), Двигатель: \(engine.rawValue), Окна: \(windows.rawValue)")
    }
}

var sportCar1 = SportCar(mark: "Mercedes-Benz", year: 2021, baggage: 450, baggageFull: .noFull)
var sportCar2 = SportCar(mark: "Volkswagen", year: 2019, baggage: 700, baggageFull: .full)
var treakCar1 = TrunkCar(mark: "КамАЗ", year: 2002, baggage: 5000, baggageFull: .full)
var treakCar2 = TrunkCar(mark: "БелАЗ", year: 2005, baggage: 77600, baggageFull: .noFull)

sportCar1.EngineSportCar(engineСondition: .on)
sportCar2.EngineSportCar(engineСondition: .on)
treakCar1.EngineTrunkCar(engineСondition: .on)
treakCar2.EngineTrunkCar(engineСondition: .on)
sportCar1.WindowsSportCar(windowsState: .open)
sportCar2.WindowsSportCar(windowsState: .open)
treakCar1.WindowsTrunkCar(windowsState: .open)
treakCar2.WindowsTrunkCar(windowsState: .open)

sportCar1.printSportCar()
print()
sportCar2.printSportCar()
print()
treakCar1.printTrunkCar()
print()
treakCar2.printTrunkCar()
