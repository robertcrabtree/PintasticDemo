//
//  DemoViewModel.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation

protocol DemoViewModel {
    var title: String { get }
}

struct DefaultDemoViewModel: DemoViewModel {
    let title: String
}
