//
//  MenuViewController.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation
import UIKit
import Pintastic

class MenuViewController: UITableViewController {

    let decoratorFactory: DemoViewDecoratorFactory = DefaultDemoViewDecoratorFactory()

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Demo Menu"

        tableView.register(MenuCell.self)
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DemoIdentifier.allCases.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        .configure(
            menuCell: tableView.menuCell(for: indexPath),
            id: DemoIdentifier.allCases[indexPath.row]
        )
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)

        let id = DemoIdentifier.allCases[indexPath.row]
        let controller = DemoViewController(
            config: .init(
                title: id.title,
                navigationAccessibility: id.accessibility
            ),
            decorator: decoratorFactory.makeDecorator(id: id)
        )
        show(controller, sender: self)
    }
}

extension UITableView {
    func menuCell(for indexPath: IndexPath) -> MenuCell {
        dequeueReusableCell(withIdentifier: MenuCell.cellID, for: indexPath) as! MenuCell
    }
}

extension UITableViewCell {
    static func configure(menuCell: MenuCell, id: DemoIdentifier) -> UITableViewCell {
        menuCell.testTitleLabel.text = id.title
        menuCell.accessibilityIdentifier = id.accessibility
        return menuCell
    }
}
