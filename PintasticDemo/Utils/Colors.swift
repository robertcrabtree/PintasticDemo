//
//  Colors.swift
//  PintasticDemo
//
//  Created by Rob on 11/22/21.
//

import UIKit

class ColorPalette {

    private let count: Int
    private var index: Int = 0
    private let palette: [UIColor]

    init(count: Int) {
        self.count = count
        self.palette = (1...count)
            .map { 1.0 / (Double(count) / Double($0)) }
            .map {
                UIColor(
                    hue: $0,
                    saturation: 0.5,
                    brightness: 1.0,
                    alpha: 0.75
                )
            }
    }

    func next() -> UIColor {
        defer { index = (index + 1) % count }
        return palette[index]
    }

    subscript(index: Int) -> UIColor {
        palette[index]
    }
}
