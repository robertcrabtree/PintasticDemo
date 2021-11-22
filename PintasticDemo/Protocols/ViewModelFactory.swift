//
//  ViewModelFactory.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation

protocol ViewModelFactory {
    func makeMenuViewModel() -> MenuViewModel
    func makeDemoViewModel(title: String) -> DemoViewModel
}

struct DefaultViewModelFactory: ViewModelFactory {
    let demoDataSource: DemoDataSource

    func makeMenuViewModel() -> MenuViewModel {
        DefaultMenuViewModel(demoDataSource: demoDataSource)
    }

    func makeDemoViewModel(title: String) -> DemoViewModel {
        DefaultDemoViewModel(title: title)
    }
}
