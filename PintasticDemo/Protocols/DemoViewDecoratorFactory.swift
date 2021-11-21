//
//  DemoViewDecoratorFactory.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation

protocol DemoViewDecoratorFactory {
    func makeDecorator(id: DemoIdentifier) -> DemoViewDecorator
}

struct DefaultDemoViewDecoratorFactory: DemoViewDecoratorFactory {
    func makeDecorator(id: DemoIdentifier) -> DemoViewDecorator {
        switch id {
        case .edge:
            return EdgeDemoViewDecorator()
        case .topAndBottom:
            return TopAndBottomDemoViewDecorator()
        }
    }
}
