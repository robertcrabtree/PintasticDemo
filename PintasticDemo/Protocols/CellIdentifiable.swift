//
//  CellIdentifiable.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation
import UIKit

protocol CellIdentifiable {
    static var cellID: String { get }
}

extension CellIdentifiable where Self: UITableViewCell {
    static var cellID: String { String(describing: Self.self) }
}

extension UITableView {
    func register<Cell: CellIdentifiable & UITableViewCell>(_ cellType: Cell.Type) {
        register(cellType, forCellReuseIdentifier: Cell.cellID)
    }
}
