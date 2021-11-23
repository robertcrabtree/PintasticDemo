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

    let viewControllerFactory: ViewControllerFactory
    let viewModel: MenuViewModel

    weak var flowControllerDelegate: MenuFlowControllerDelegate?

    init(viewControllerFactory: ViewControllerFactory, viewModel: MenuViewModel) {
        self.viewControllerFactory = viewControllerFactory
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Demo Menu"

        tableView.register(MenuCell.self)
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.demoCount
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: MenuCell.cellID, for: indexPath) as! MenuCell
        cell.demoTitleLabel.text = viewModel.title(for: indexPath)
        cell.accessibilityIdentifier = viewModel.accessibility(for: indexPath)
        cell.backgroundColor = Colors.next()
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)

        flowControllerDelegate?.menuViewController(
            self,
            didSelectDemoWithIdentifier: viewModel.identifier(for: indexPath)
        )
    }
}
