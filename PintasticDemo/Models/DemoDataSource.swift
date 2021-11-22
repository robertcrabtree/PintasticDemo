//
//  DemoDataSource.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation

protocol DemoDataSource {
    var demos: [Demo] { get }
}

class DefaultDemoDataSource: DemoDataSource {

    let demos: [Demo] = {
        DemoIdentifier.allCases.map {
            Demo(identifier: $0, title: DemoIdentifierToTitleTranslator.titleFor(id: $0))
        }
    }()
}
