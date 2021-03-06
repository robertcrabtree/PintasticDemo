//
//  ViewControllerFactory.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation

protocol ViewControllerFactory {
    func makeMenuViewController() -> MenuViewController
    func makeDemoViewController(identifier: DemoIdentifier) -> DemoViewController
}

extension Dependencies: ViewControllerFactory {
    func makeMenuViewController() -> MenuViewController {
        MenuViewController(
            viewControllerFactory: self,
            viewModel: MenuViewModel(demoDataSource: demoDataSource)
        )
    }

    func makeDemoViewController(identifier: DemoIdentifier) -> DemoViewController {
        DemoViewController(
            viewModel: DemoViewModel(demoDataSource: demoDataSource, identifier: identifier),
            viewDecorator: viewDecoratorFactory.makeDecorator(identifier: identifier)
        )
    }
}
