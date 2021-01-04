//
//  ActionsConfigurator.swift
//  Avito iOS intership
//
//  Created by Timur Begishev on 02.01.2021.
//

import Foundation

class ActionsConfigurator: ActionsConfiguratorProtocol {
    
    func configure(with viewController: ActionsViewController) {
        let presenter = ActionsPresenter(view: viewController)
        let interactor = ActionsInteractor(presenter: presenter)
        let router = ActionsRouter(viewController: viewController)
        
        viewController.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
    }
    
}
