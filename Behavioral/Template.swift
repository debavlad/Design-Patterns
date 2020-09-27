//
//  Template.swift
//  Design-Patterns
//
//  Created by debavlad on 27.09.2020.
//

protocol Garden {
    func prepareSoil()
    func plantSeeds()
    func waterPlants()
    func prepareGarden()
}

extension Garden {
    func prepareGarden() {
        prepareSoil()
        plantSeeds()
        waterPlants()
    }
}

final class RoseGarden: Garden {
    func prepare() {
        prepareGarden()
    }

    func prepareSoil() {
        //...
    }

    func plantSeeds() {
        //...
    }

    func waterPlants() {
        //...
    }
}
