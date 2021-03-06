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
        let label = VerticallyAlignedLabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.contentMode = .top
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
        view.addSubview(descriptionLabel)

        contentView
            .makePin(to: view.safeAreaLayoutGuide)
            .pinTopEdges()
            .pinHorizontalCenters()
            .activate()

        contentView
            .makePin(to: view)
            .addConstraint(withIdentifier: "width", constraint: {
                contentView.widthAnchor.constraint(lessThanOrEqualTo: view.safeAreaLayoutGuide.heightAnchor)
            })
            .addConstraint(withIdentifier: "height", constraint: {
                contentView.heightAnchor.constraint(lessThanOrEqualTo: view.safeAreaLayoutGuide.widthAnchor)
            })
            .activate()

        contentView
            .makePin()
            .pinWidthEqualToHeight()
            .activate()

        descriptionLabel
            .makePin(to: view.safeAreaLayoutGuide)
            .pinLeadingEdges(constant: 20)
            .pinTrailingEdges(constant: -20)
            .pinBottomEdges()
            .activate()

        descriptionLabel
            .makePin(to: contentView)
            .pinBelow()
            .activate()

        viewDecorator.decorate(view: contentView, descriptionLabel: descriptionLabel)
    }
}
