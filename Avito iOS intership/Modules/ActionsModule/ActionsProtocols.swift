//
//  ActionsProtocols.swift
//  Avito iOS intership
//
//  Created by Timur Begishev on 31.12.2020.
//


protocol ActionsConfiguratorProtocol: class {
    func configure(with viewController: ActionsViewController)
}

protocol ActionsRouterProtocol: class {
    func closeCurrentViewController()
    func nextViewController()
}

protocol ActionsPresenterProtocol: class {
    var router: ActionsRouterProtocol! { get set }
    func configureView()
    func closeButtonClicked()
    func actionButtonClicked()
}

protocol ActionsViewProtocol: class {
    var actions: [Action] { get set }
    func setupCloseButton()
    func setupActionsCollection()
    func setupActionButton()
}

protocol ActionsInteractorProtocol: class {
    func getActions() -> Actions?
}
