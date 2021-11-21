//
//  ViewDecoratorFactory.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation

protocol ViewDecoratorFactory {
    func makeDecorator(id: DemoIdentifier) -> ViewDecorator
}

struct DefaultViewDecoratorFactory: ViewDecoratorFactory {
    func makeDecorator(id: DemoIdentifier) -> ViewDecorator {
        switch id {
        case .edge:
            return EdgeDecorator()
        case .topAndBottom:
            return TopAndBottomDecorator()
        case .leadingAndTrailing:
            return LeadingAndTrailingDecorator()
        }
    }
}
