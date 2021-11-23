//
//  MenuViewModel.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation

struct MenuViewModel {

    let demoDataSource: DemoDataSource

    var demoCount: Int { demoDataSource.count }

    func identifier(for indexPath: IndexPath) -> DemoIdentifier {
        demoDataSource[indexPath.row].identifier
    }

    func title(for indexPath: IndexPath) -> String {
        demoDataSource[indexPath.row].title
    }

    func accessibility(for indexPath: IndexPath) -> String {
        demoDataSource[indexPath.row].identifier.accessibility
    }
}
