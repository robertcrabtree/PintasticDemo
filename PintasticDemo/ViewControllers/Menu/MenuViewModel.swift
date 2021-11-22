//
//  MenuViewModel.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation

struct MenuViewModel {

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
}
