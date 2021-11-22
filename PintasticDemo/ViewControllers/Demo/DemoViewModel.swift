//
//  DemoViewModel.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation

struct DemoViewModel {

    let demoDataSource: DemoDataSource
    let identifier: DemoIdentifier

    var title: String? {
        demoDataSource.demo(identifier: identifier)?.title
    }
}
