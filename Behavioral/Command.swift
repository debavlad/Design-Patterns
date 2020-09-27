//
//  Command.swift
//  Design-Patterns
//
//  Created by debavlad on 27.09.2020.
//

protocol DoorCommand {
    func execute() -> String
}

final class OpenCommand: DoorCommand {
    let doors: String

    init(doors: String) {
        self.doors = doors
    }

    func execute() -> String {
        return "Opened \(doors)"
    }
}

final class CloseCommand: DoorCommand {
    let doors: String

    init(doors: String) {
        self.doors = doors
    }

    func execute() -> String {
        return "Closed \(doors)"
    }
}

final class HAL9000DoorOperations {
    private let openCommand: OpenCommand
    private let closeCommand: CloseCommand

    init(doors: String) {
        openCommand = OpenCommand(doors: doors)
        closeCommand = CloseCommand(doors: doors)
    }

    func open() -> String {
        return openCommand.execute()
    }

    func close() -> String {
        return closeCommand.execute()
    }
}
