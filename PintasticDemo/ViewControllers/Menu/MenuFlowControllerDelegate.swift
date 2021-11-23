//
//  Menu.swift
//  PintasticDemo
//
//  Created by Rob on 11/22/21.
//

import Foundation

protocol MenuFlowControllerDelegate: AnyObject {
    func menuViewController(
        _ sender: MenuViewController,
        didSelectDemoWithIdentifier identifier: DemoIdentifier
    )
}
