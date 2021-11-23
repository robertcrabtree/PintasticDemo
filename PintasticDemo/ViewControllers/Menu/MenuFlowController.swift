//
//  MenuFlowController.swift
//  PintasticDemo
//
//  Created by Rob on 11/22/21.
//

import UIKit

class MenuFlowController: UIViewController {

    private let viewControllerFactory: ViewControllerFactory
    private let navigation = UINavigationController()

    init(viewControllerFactory: ViewControllerFactory) {
        self.viewControllerFactory = viewControllerFactory
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let controller = viewControllerFactory.makeMenuViewController()
        controller.flowControllerDelegate = self
        addChild(navigation)
        view.addSubview(navigation.view)
        navigation.didMove(toParent: self)
        navigation.show(controller, sender: self)
    }
}

extension MenuFlowController: MenuFlowControllerDelegate {
    func menuViewController(_ sender: MenuViewController, didSelectDemoWithIdentifier identifier: DemoIdentifier) {
        navigation.show(
            viewControllerFactory.makeDemoViewController(identifier: identifier),
            sender: self
        )
    }
}
