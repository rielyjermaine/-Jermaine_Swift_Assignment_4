import Foundation
protocol Trailer {
    func startEngine()
    func stopEngine()
    var engineIsOn: Bool { get set }
}

protocol WaterSystem {
    var waterCapacity: Double { get }
    func fillWaterTank()
    func drainWaterTank()
}

class Camper: Trailer, WaterSystem {
    var brand: String
    var engineIsOn: Bool
    var waterTankIsFilled: Bool
    let waterCapacity: Double
    
    init(brand: String, waterCapacity: Double) {
        self.brand = brand
        self.engineIsOn = false
        self.waterTankIsFilled = false
        self.waterCapacity = waterCapacity
    }
    
    func startEngine() -> Void {
        if !engineIsOn {
            print("Engine is now on for \(brand) camper.")
            engineIsOn = true
        } else {
            print("Engine is already on.")
        }
    }
    
    func stopEngine() -> Void {
        if engineIsOn {
            print("Engine is now off for \(brand) camper.")
            engineIsOn = false
        } else {
            print("Engine is already off.")
        }
    }
    
    func fillWaterTank() -> Void {
        if !waterTankIsFilled {
            print("Water tank for \(brand) camper is now filled.")
            waterTankIsFilled = true
        } else {
            print("Water tank is already filled.")
        }
    }
    
    func drainWaterTank() -> Void {
        if waterTankIsFilled {
            print("Water tank for \(brand) camper is now drained.")
            waterTankIsFilled = false
        } else {
            print("Water tank is already empty.")
        }
    }
}


var myCamper = Camper(brand: "Airstream", waterCapacity: 100.0)
print("Water capacity: \(myCamper.waterCapacity)")
myCamper.startEngine()
myCamper.fillWaterTank()
myCamper.drainWaterTank()
myCamper.stopEngine()
myCamper.fillWaterTank()
