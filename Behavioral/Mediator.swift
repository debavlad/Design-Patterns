//
//  Mediator.swift
//  Design-Patterns
//
//  Created by debavlad on 27.09.2020.
//

protocol Receiver {
    associatedtype MessageType

    func receive(message: MessageType)
}

protocol Sender {
    associatedtype MessageType
    associatedtype ReceiverType: Receiver

    var recipients: [ReceiverType] { get }

    func send(message: MessageType)
}

struct Programmer: Receiver {
    let name: String

    init(name: String) {
        self.name = name
    }

    func receive(message: String) {
        print("\(name) received: \(message)")
    }
}

final class MessageMediator: Sender {
    var recipients: [Programmer] = []

    func add(recipient: Programmer) {
        recipients.append(recipient)
    }

    func send(message: String) {
        for recipient in recipients {
            recipient.receive(message: message)
        }
    }
}
