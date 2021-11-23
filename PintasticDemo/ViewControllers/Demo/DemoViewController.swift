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

    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        return label
    }()

    let contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

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
        view.backgroundColor = .systemBackground
        navigationItem.largeTitleDisplayMode = .never

        view.addSubview(contentView)
        contentView.pin(to: view.safeAreaLayoutGuide)
            .leadingEdges()
            .trailingEdges()
            .topEdges()
            .activate()

        view.addSubview(descriptionLabel)
        descriptionLabel
            .pin(to: view.safeAreaLayoutGuide)
            .leadingEdges(constant: 20)
            .trailingEdges(constant: -20)
            .bottomEdges(constant: -40)
            .activate()

        descriptionLabel
            .pin(to: contentView)
            .topToBottomEdge(constant: 20)
            .activate()

        viewDecorator.decorate(view: contentView, descriptionLabel: descriptionLabel)
    }
}
