//
//  Prototype.swift
//  Design-Patterns
//
//  Created by debavlad on 27.09.2020.
//

struct MoonWorker {
    let name: String
    var health: Int = 100

    init(name: String) {
        self.name = name
    }

    func clone() -> MoonWorker {
        return MoonWorker(name: name)
    }
}
