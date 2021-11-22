//
//  DemoViewController.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import UIKit

class DemoViewController: UIViewController {

    private let viewModel: DemoViewModel
    private let viewDecorator: ViewDecorator

    init(viewModel: DemoViewModel, viewDecorator: ViewDecorator) {
        self.viewModel = viewModel
        self.viewDecorator = viewDecorator
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = viewModel.title
        viewDecorator.decorate(view: view)
        view.backgroundColor = .systemBackground
    }
}
