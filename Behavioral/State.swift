//
//  State.swift
//  Design-Patterns
//
//  Created by debavlad on 27.09.2020.
//

protocol State {
    func isAuthorized(context: Context) -> Bool
    func userId(context: Context) -> String?
}

class UnauthorizedState: State {
    init() {
        print("Unauthorized.")
    }

    func isAuthorized(context: Context) -> Bool {
        return false
    }

    func userId(context: Context) -> String? {
        return nil
    }
}

class AuthorizedState: State {
    let userId: String

    init(userId: String) {
        print("Authorized as \(userId).")
        self.userId = userId
    }

    func isAuthorized(context: Context) -> Bool {
        return true
    }

    func userId(context: Context) -> String? {
        return userId
    }
}

final class Context {
    private var state: State = UnauthorizedState()

    var isAuthorized: Bool {
        return state.isAuthorized(context: self)
    }

    var userId: String? {
        return state.userId(context: self)
    }

    func changeStateToAuthorized(userId: String) {
        state = AuthorizedState(userId: userId)
    }

    func changeStateToUnauthorized() {
        state = UnauthorizedState()
    }
}
