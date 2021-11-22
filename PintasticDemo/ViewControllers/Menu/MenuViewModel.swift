//
//  MenuViewModel.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation

protocol MenuViewModel {
    var demoCount: Int { get }

    func identifier(for indexPath: IndexPath) -> DemoIdentifier
    func title(for indexPath: IndexPath) -> String
    func accessibility(for indexPath: IndexPath) -> String
    func viewModel(for indexPath: IndexPath) -> DemoViewModel
}

struct DefaultMenuViewModel: MenuViewModel {

    let demoDataSource: DemoDataSource

    var demoCount: Int { demoDataSource.demos.count }

    func identifier(for indexPath: IndexPath) -> DemoIdentifier {
        demoDataSource.demos[indexPath.row].identifier
    }

    func title(for indexPath: IndexPath) -> String {
        demoDataSource.demos[indexPath.row].title
    }

    func accessibility(for indexPath: IndexPath) -> String {
        demoDataSource.demos[indexPath.row].identifier.accessibility
    }

    func viewModel(for indexPath: IndexPath) -> DemoViewModel {
        DefaultDemoViewModel(title: title(for: indexPath))
    }
}
