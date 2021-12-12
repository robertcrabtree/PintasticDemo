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
            .makePin()
            .pin(height: 44)
            .constraint(ofType: .height, handler: { constraint in
                constraint?.priority = .defaultHigh
            })
            .activate()

        demoTitleLabel
            .makePin(to: contentView)
            .pinLeadingEdges(constant: 10)
            .pinTrailingEdges(constant: -10)
            .pinTopEdges(constant: 10)
            .pinBottomEdges(constant: -10)
            .activate()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
