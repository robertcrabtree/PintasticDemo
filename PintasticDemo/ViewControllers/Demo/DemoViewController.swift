//
//  DemoViewController.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import UIKit

class DemoViewController: UIViewController {

    private let viewModel: DemoViewModel
    private let viewBuilder: ViewBuilder

    init(viewModel: DemoViewModel, viewBuilder: ViewBuilder) {
        self.viewModel = viewModel
        self.viewBuilder = viewBuilder
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = viewModel.title
        viewBuilder.build(view: view)
        view.backgroundColor = .systemBackground
    }
}
