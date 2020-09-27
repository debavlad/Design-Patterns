//
//  FactoryMethod.swift
//  Design-Patterns
//
//  Created by debavlad on 27.09.2020.
//

protocol CurrencyDescribing {
    var symbol: String { get }
    var code: String { get }
}

final class Euro: CurrencyDescribing {
    var symbol: String {
        return "€"
    }

    var code: String {
        return "EUR"
    }
}

final class Dollar: CurrencyDescribing {
    var symbol: String {
        return "$"
    }

    var code: String {
        return "USD"
    }
}

enum Country {
    case unitedStates
    case spain
    case uk
    case greece
}

enum CurrencyFactory {
    static func currency(for country: Country) -> CurrencyDescribing? {
        switch country {
            case .spain, .greece:
                return Euro()
            case .unitedStates:
                return Dollar()
            default:
                return nil
        }
    }
}
