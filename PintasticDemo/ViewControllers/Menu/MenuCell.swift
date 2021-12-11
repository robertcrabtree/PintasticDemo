//
//  MenuCell.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation
import UIKit
import Pintastic

class MenuCell: UITableViewCell, CellIdentifiable {

    let demoTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        contentView.addSubview(demoTitleLabel)

        demoTitleLabel
            .pin()
            .height(constant: 44)
            .activate()

        demoTitleLabel
            .pin(to: contentView)
            .constraint(ofType: .height, handler: { constraint in
                constraint?.priority = .defaultHigh
            })
            .leadingEdges(constant: 10)
            .trailingEdges(constant: -10)
            .topEdges(constant: 10)
            .bottomEdges(constant: -10)
            .activate()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
