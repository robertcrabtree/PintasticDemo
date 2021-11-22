//
//  ViewControllerFactory.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation

protocol ViewControllerFactory {
    func makeMenuViewController() -> MenuViewController
    func makeDemoViewController(identifier: DemoIdentifier, title: String) -> DemoViewController
}

extension Dependencies: ViewControllerFactory {
    func makeMenuViewController() -> MenuViewController {
        MenuViewController(
            viewControllerFactory: self,
            viewModel: viewModelFactory.makeMenuViewModel()
        )
    }

    func makeDemoViewController(identifier: DemoIdentifier, title: String) -> DemoViewController {
        DemoViewController(
            viewModel: viewModelFactory.makeDemoViewModel(title: title),
            viewBuilder: viewBuilderFactory.makeBuilder(identifier: identifier)
        )
    }
}
