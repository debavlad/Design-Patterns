//
//  Composite.swift
//  Design-Patterns
//
//  Created by debavlad on 27.09.2020.
//

protocol Shape {
    func draw(fillColor: String)
}

final class Square: Shape {
    func draw(fillColor: String) {
        print("Drawing a square with \(fillColor) color.")
    }
}

final class Circle: Shape {
    func draw(fillColor: String) {
        print("Drawing a circle with \(fillColor) color.")
    }
}

final class Whiteboard: Shape {
    private lazy var shapes: [Shape] = []

    init(_ shapes: Shape...) {
        self.shapes = shapes
    }

    func draw(fillColor: String) {
        for shape in shapes {
            shape.draw(fillColor: fillColor)
        }
    }
}
