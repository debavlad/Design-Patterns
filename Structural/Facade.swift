//
//  Facade.swift
//  Design-Patterns
//
//  Created by debavlad on 27.09.2020.
//

import Foundation

final class Defaults {
    private let defaults: UserDefaults

    init(defaults: UserDefaults = .standard) {
        self.defaults = defaults
    }

    subscript(key: String) -> String? {
        get {
            return defaults.string(forKey: key)
        }
        set {
            defaults.setValue(newValue, forKey: key)
        }
    }
}
