import UIKit

protocol Parkable {
    var plate: String { get }
}

struct Vehicle: Parkable, Hashable {
    var plate: String
    //let type: VehicleType
    //var checkInTime : Date
    //Cartão de desconto
    //Tempo total no estacionamento
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(plate.hashValue)
    }
    
    static func == (lhs: Vehicle, rhs: Vehicle) -> Bool {
        lhs.plate == rhs.plate
    }
}

struct Parking {
    var vehicles: Set<Vehicle> = Set()
}
