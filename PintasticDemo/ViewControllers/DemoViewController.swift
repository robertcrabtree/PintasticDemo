//
//  DemoViewController.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import UIKit

class DemoViewController: UIViewController {

    struct Config {
        var title: String
        var navigationAccessibility: String
    }

    private let config: Config
    private let decorator: ViewDecorator

    init(config: Config, decorator: ViewDecorator) {
        self.config = config
        self.decorator = decorator
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = config.title
        navigationController?
            .navigationBar
            .accessibilityIdentifier = config.navigationAccessibility
        decorator.decorateView(view)
        view.backgroundColor = .systemBackground
    }
}
