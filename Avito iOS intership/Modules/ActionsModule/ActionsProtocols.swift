//
//  ActionsProtocols.swift
//  Avito iOS intership
//
//  Created by Timur Begishev on 31.12.2020.
//

import UIKit

protocol ActionsConfiguratorProtocol: class {
    func configure(with viewController: ActionsViewController)
}

protocol ActionsRouterProtocol: class {
    func closeCurrentViewController()
    func nextViewController()
    func applyAction(_ action: Action)
}

protocol ActionsPresenterProtocol: class {
    var router: ActionsRouterProtocol! { get set }
    func configureView()
    func closeButtonClicked()
    func actionButtonClicked()
}

protocol ActionsViewProtocol: class {
    var actionsHeader: String? { get set }
    var actions: [Action] { get set }
    var actionButtonStates: (String, String)? { get set }
    var selected: Int? { get set }
    func setupCloseButton()
    func setupActionsCollection()
    func setupActionButton()
    func showAction(_ action: Action)
}

protocol ActionsInteractorProtocol: class {
    func getActions() -> Actions?
}
