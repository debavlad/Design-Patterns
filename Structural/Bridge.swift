//
//  Bridge.swift
//  Design-Patterns
//
//  Created by debavlad on 27.09.2020.
//

protocol Switch {
    var appliance: Appliance { get }
    func turnOn()
}

protocol Appliance {
    func run()
}

final class RemoteControl: Switch {
    let appliance: Appliance

    init(appliance: Appliance) {
        self.appliance = appliance
    }

    func turnOn() {
        appliance.run()
    }
}

final class TV: Appliance {
    func run() {
        print("TV turned on.")
    }
}

final class VaccumCleaner: Appliance {
    func run() {
        print("Vacuum cleaner turned on.")
    }
}
