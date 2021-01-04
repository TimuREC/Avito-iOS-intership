//
//  ActionsPresenter.swift
//  Avito iOS intership
//
//  Created by Timur Begishev on 31.12.2020.
//

import Foundation

class ActionsPresenter: ActionsPresenterProtocol {
    
    weak var view: ActionsViewProtocol!
    var interactor: ActionsInteractorProtocol!
    var router: ActionsRouterProtocol!
    
    required init(view: ActionsViewProtocol) {
        self.view = view
        
    }
    
    func configureView() {
        guard let actions = interactor.getActions() else { return }
        view.actions = actions.result.list
//        print(actions)
        view.setupCloseButton()
        view.setupActionsCollection()
        view.setupActionButton()
    }
    
    func closeButtonClicked() {
        router.closeCurrentViewController()
    }
    
    func actionButtonClicked() {
        router.nextViewController()
    }
    
    
}
