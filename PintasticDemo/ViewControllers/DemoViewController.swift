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
    private let demo: Demo

    init(config: Config, demo: Demo) {
        self.config = config
        self.demo = demo
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
        demo.pinViews(to: view)
        view.backgroundColor = .systemBackground
    }
}
