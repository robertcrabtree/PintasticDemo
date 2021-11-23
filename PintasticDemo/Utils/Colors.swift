//
//  Colors.swift
//  PintasticDemo
//
//  Created by Rob on 11/22/21.
//

import UIKit

struct Colors {

    private static let colors: [UIColor] = [
        .systemRed,
        .systemBlue,
        .systemCyan,
        .systemMint,
        .systemPink,
        .systemTeal,
        .systemIndigo,
        .systemOrange,
        .systemPurple,
        .systemYellow,
    ]

    private static var index = 0

    static func next() -> UIColor {
        defer {
            index = (index + 1) % colors.count
        }
        return colors[index].withAlphaComponent(0.5)
    }
}
